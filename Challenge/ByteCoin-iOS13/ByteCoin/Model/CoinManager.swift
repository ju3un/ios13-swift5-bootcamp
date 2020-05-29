//
//  CoinManager.swift
//  ByteCoin
//
//  Created by Angela Yu on 11/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

protocol CoinManagerDelegate {
    func didFailWithError(error: Error)
    func didUpdateCoinPrice(coinData: CoinData)
}

struct CoinManager {
    
    var delegate: CoinManagerDelegate?
    
    let baseURL = "https://rest.coinapi.io/v1/exchangerate/BTC/"
    let apiKey = "apikey=268F4C3D-6E02-4A05-8FFD-C63F02B3CF35"
    
    let currencyArray = ["AUD", "BRL","CAD","CNY","EUR","GBP","HKD","IDR","ILS","INR","JPY","MXN","NOK","NZD","PLN","RON","RUB","SEK","SGD","USD","ZAR"]

    func getCoinPrice(for currency: String) {
        
        let url = "\(baseURL)\(currency)?\(apiKey)"
        performRequest(with: url)
    }
    
    func performRequest(with urlString: String) {
        if let url = URL(string: urlString) {
            
            let urlSession = URLSession(configuration: .default)
            let task = urlSession.dataTask(with: url) { (data: Data?, urlResponse: URLResponse?, error: Error?) in
                
                if error != nil {
                    self.delegate?.didFailWithError(error: error!)
                    return
                }
                
                if let safeData = data {
                    //let dataString = String(data: safeData, encoding: .utf8)
                    if let coinData = self.parseJSON(data: safeData) {
                        self.delegate?.didUpdateCoinPrice(coinData: coinData)
                    }
                }
            }
            task.resume()
        }
        
    }
    
    
    
    func parseJSON(data: Data) -> CoinData? {
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(CoinData.self, from: data)
            let price = decodedData
            return price
        } catch {
            delegate?.didFailWithError(error: error)
            return nil
        }
    }
    
}
