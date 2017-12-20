//
//  DelegateViewController.swift
//  PassingData
//
//  Created by Roberto Manese III on 12/20/17.
//  Copyright © 2017 maobaoCoder. All rights reserved.
//

import UIKit

class DelegateViewController: UIViewController {

    @IBOutlet weak var date_lbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func selectDate_buttonTapped() {
        let sb = UIStoryboard(name: "ReusablePopupStoryboard", bundle: nil)
        let popup = sb.instantiateInitialViewController() as! ReusablePopupViewController
        popup.delegate = self
        present(popup, animated: true)
    }
    
}

extension DelegateViewController: PopupDelegate {
    func popupValueSelected(value: String) {
        date_lbl.text = value
    }
    
    
}
