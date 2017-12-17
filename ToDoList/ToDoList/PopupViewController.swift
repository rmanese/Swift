//
//  PopupViewController.swift
//  ToDoList
//
//  Created by Roberto Manese III on 12/17/17.
//  Copyright © 2017 maobaoCoder. All rights reserved.
//

import UIKit

class PopupViewController: UIViewController {

    @IBOutlet weak var task_textfield: UITextField!
    var delegate: PopupDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func submit_buttonTapped(_ sender: UIButton) {
        let userInput = task_textfield.text
        
        if userInput != nil {
            delegate?.popupSelectedValue(value: userInput!)
            dismiss(animated: true)
        }
    }

    


}
