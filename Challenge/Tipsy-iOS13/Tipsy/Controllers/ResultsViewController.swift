//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by ju3un on 2020/05/23.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    var tip: Int = 0
    var splitNumber: Int = 0
    var result: Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        totalLabel.text = String(format: "%.2f", result)
        settingsLabel.text = "Split between \(splitNumber) people, with \(tip)% tip."
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }

}


