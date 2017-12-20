//
//  ReusablePopupViewController.swift
//  PassingData
//
//  Created by Roberto Manese III on 12/19/17.
//  Copyright © 2017 maobaoCoder. All rights reserved.
//

import UIKit

class ReusablePopupViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    
    var delegate: PopupDelegate?
    var onSave: ((_ data: String) -> ())?
    
    var formattedDate: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter.string(from: datePicker.date)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func submit_buttonTapped() {
        NotificationCenter.default.post(name: .saveDate, object: self)
        
        onSave?(formattedDate)
        
        delegate?.popupValueSelected(value: formattedDate)
        
        dismiss(animated: true)
    }
    
}
