//
//  DelegateViewController.swift
//  PassingData
//
//  Created by Roberto Manese III on 12/20/17.
//  Copyright © 2017 maobaoCoder. All rights reserved.
//

import UIKit

class DelegateViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func selectDate_buttonTapped() {
        let sb = UIStoryboard(name: "ReusablePopupStoryboard", bundle: nil)
        let popup = sb.instantiateInitialViewController() as! ReusablePopupViewController
        present(popup, animated: true)
    }
    
}
