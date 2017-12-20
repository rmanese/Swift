//
//  JobSelectionViewController.swift
//  RpgClassPicker
//
//  Created by Roberto Manese III on 12/20/17.
//  Copyright © 2017 maobaoCoder. All rights reserved.
//

import UIKit

class JobSelectionViewController: UIViewController {
    
    var delegate: JobDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func jobSelect_buttonTapped(_ sender: UIButton) {
        if sender.tag == 0 {
            delegate?.jobSelected("Warrior")
            print("Warrior")
        } else if sender.tag == 1 {
            delegate?.jobSelected("Archer")
            print("Archer")
        } else if sender.tag == 2 {
            delegate?.jobSelected("Mage")
            print("Mage")
        } else if sender.tag == 3 {
            delegate?.jobSelected("Thief")
            print("Thief")
        }
        dismiss(animated: true )
    }
    

}
