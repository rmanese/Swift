//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Roberto Manese III on 12/22/17.
//  Copyright © 2017 maobaoCoder. All rights reserved.
//

import UIKit

struct Currency: Decodable {
    let base: String
    let rates: [String: Double]
}

class ViewController: UIViewController {

    @IBOutlet weak var userInput_textField: UITextField!
    @IBOutlet weak var conversion_tableView: UITableView!
    
    var usd: Currency?
    var baseRate = 1.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        conversion_tableView.dataSource = self
        conversion_tableView.allowsSelection = false
        conversion_tableView.showsVerticalScrollIndicator = false
        userInput_textField.textAlignment = .center
        
        fetchData()
    }

    @IBAction func conversion_buttonTapped(_ sender: UIButton) {
        if let iGetString = userInput_textField.text {
            if let isDouble = Double(iGetString) {
                baseRate = isDouble
                fetchData()
            }
        }
    }
    
    func fetchData() {
        let url = URL(string: "https://api.fixer.io/latest?base=USD")
        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            
            if error == nil {
                do {
                    self.usd = try JSONDecoder().decode(Currency.self, from: data!)
                } catch {
                    print("Parse Error")
                }
                DispatchQueue.main.async {
                    self.conversion_tableView.reloadData()
                }
            } else {
                print("Error")
            }
        }.resume()
    }
    
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let currecyFetched = usd {
            return currecyFetched.rates.count
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .value1, reuseIdentifier: nil)
        
        if let currencyFetched = usd {
            cell.textLabel?.text = Array(currencyFetched.rates.keys)[indexPath.row]
            let selectedRate = baseRate * Array(currencyFetched.rates.values)[indexPath.row]
            cell.detailTextLabel?.text = "\(selectedRate)"
            return cell
        }
        return UITableViewCell()
    }
}

