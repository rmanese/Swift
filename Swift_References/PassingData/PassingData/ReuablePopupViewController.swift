//
//  ReuablePopupViewController.swift
//  PassingData
//
//  Created by Roberto Manese III on 12/17/17.
//  Copyright © 2017 maobaoCoder. All rights reserved.
//

import UIKit

class ReusablePopupViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    
    var formattedDate: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter.string(from: datePicker.date)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func select_buttonTapped(_ sender: UIButton) {
        NotificationCenter.default.post(name: .saveDate, object: self)
        
        dismiss(animated: true)
    }
    
    
}
