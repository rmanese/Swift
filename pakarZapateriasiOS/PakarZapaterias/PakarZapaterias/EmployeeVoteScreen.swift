//
//  VoteScreen.swift
//  PakarZapaterias
//
//  Created by Justin on 2/12/18.
//  Copyright © 2018 RedWhale. All rights reserved.
//

import UIKit

class EmployeeVoteScreen: UIViewController {
    
    @IBOutlet weak var coldButton: UIButton!
    @IBOutlet weak var warmButton: UIButton!
    @IBOutlet weak var hotButton: UIButton!
    @IBOutlet weak var superButton: UIButton!
    @IBOutlet weak var employeeShoeImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // round buttons
        coldButton.layer.cornerRadius = coldButton.frame.width / 2
        warmButton.layer.cornerRadius = warmButton.frame.width / 2
        hotButton.layer.cornerRadius = hotButton.frame.width / 2
        superButton.layer.cornerRadius = superButton.frame.width / 2
        
        //add border to superlike button
        superButton.layer.borderWidth = 3
        superButton.layer.borderColor = UIColor.lightGray.cgColor
        
        employeeShoeImage.layer.borderWidth = 5
        employeeShoeImage.layer.borderColor = UIColor.black.cgColor
    }
    
}
