//
//  NotificationCenterViewController.swift
//  PassingData
//
//  Created by Roberto Manese III on 12/17/17.
//  Copyright © 2017 maobaoCoder. All rights reserved.
//

import UIKit

class NotificationCenterViewController: UIViewController {

    @IBOutlet weak var dateLabel: UILabel!
    var observer: NSObjectProtocol?
    
    override func viewDidAppear(_ animated: Bool) {
        observe = NotificationCenter.default.addObserver(forName: .saveDate, object: nil, queue: .main, using: { (notification) in
            let popupVC = notification.object as? ReuablePopupViewController
            self.dateLabel.text = "The date you've selected was: \(popupVC?.formattedDate)"
        })
        
        super.viewDidAppear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if let observer = observe {
            NotificationCenter.default.removeObserver(observer)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func selectDate_buttonTapped(_ sender: UIButton) {
        let sb = UIStoryboard(name: "ReusablePopupViewController", bundle: nil)
        let popup = sb.instantiateInitialViewController() as? ReuablePopupViewController
        present(ReuablePopupViewController, animated: true)
    }
    

}

