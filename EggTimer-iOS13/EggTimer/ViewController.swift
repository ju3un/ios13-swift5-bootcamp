//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    let eggTimes = ["Soft": 3, "Medium": 4, "Hard": 7]
    
    var counter = 0
    var progressBy1Second: Float = 0.0
    
    var timer = Timer()
    var player: AVAudioPlayer!
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        progressBar.progress = 0.0
        
        timer.invalidate()
        
        let hardness = sender.currentTitle!
        
        counter = eggTimes[hardness]!
        progressBy1Second = Float(1.0) / Float(counter)
        statusLabel.text = hardness
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(ViewController.updateCounter), userInfo: nil, repeats: true)

    }
    
    @objc func updateCounter() {
        if counter > 0 {
            progressBar.progress += progressBy1Second
            print("\(counter) seconds.")
            counter -= 1
        } else {
            progressBar.progress = 1.0
            timer.invalidate()
            statusLabel.text = "Done"
            
            let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
        }
    }
    
    
}
// 100분이 남았고 100%로 그럼 1분당 1% 즉 0.01인거지
// 나눠서 1분당 값이 얼만지 확인한 후에
// 그걸 더해가능거지
