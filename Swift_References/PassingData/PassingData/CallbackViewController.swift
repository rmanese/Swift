//
//  CallbackViewController.swift
//  PassingData
//
//  Created by Roberto Manese III on 12/19/17.
//  Copyright © 2017 maobaoCoder. All rights reserved.
//

import UIKit

class CallbackViewController: UIViewController {

    @IBOutlet weak var date_lbl: UILabel!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toPopupSegue2" {
            let popup = segue.destination as! ReusablePopupViewController
            popup.onSave = { (data) in
                self.date_lbl.text = data
            }
        }
    }
    
    @IBAction func selectDate_buttonTapped(_ sender: Any) {
        
    }
    
}
