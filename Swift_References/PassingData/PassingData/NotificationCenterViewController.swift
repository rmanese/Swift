//
//  NotificationCenterViewController.swift
//  PassingData
//
//  Created by Roberto Manese III on 12/19/17.
//  Copyright © 2017 maobaoCoder. All rights reserved.
//

import UIKit

class NotificationCenterViewController: UIViewController {

    @IBOutlet weak var date_lbl: UILabel!
    
    var observer: NSObjectProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        NotificationCenter.default.addObserver(forName: .saveDate, object: nil, queue: .main) { (notification) in
            let dateVC = notification.object as! ReusablePopupViewController
            self.date_lbl.text = dateVC.formattedDate
        }
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        if let observer =  observer {
            NotificationCenter.default.removeObserver(observer)
        }
    }
    
    @IBAction func selectDate_buttonTapped() {
        
    }
    
    
}
