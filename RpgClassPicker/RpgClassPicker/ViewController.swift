//
//  ViewController.swift
//  RpgClassPicker
//
//  Created by Roberto Manese III on 12/12/17.
//  Copyright © 2017 maobaoCoder. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var jobLabel: UILabel!
    @IBOutlet weak var jobImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toJobSelectionSegue" {
            let destination = segue.destination as! JobSelectionViewController
            destination.delegate = self
        }
    }
    
    @IBAction func chooseJob_buttonTapped() {
        
    }
    
}

extension ViewController: JobDelegate {
    func jobSelected(_ data: String) {
        jobLabel.text = data
        jobImage.image = UIImage(named: data)
    }
    
    
}

