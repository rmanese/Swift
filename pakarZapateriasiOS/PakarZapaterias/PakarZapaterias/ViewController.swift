//
//  ViewController.swift
//  PakarZapaterias
//
//  Created by Justin on 2/12/18.
//  Copyright © 2018 RedWhale. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

// Create UIPicker for the categorites
// Add Segue voting complete to all buttons
// Progress bar from cocoa pods
// Finish up tutorial for user and employee
// Figure out Alamofire API stuff.

class ViewController: UIViewController {
    
    @IBOutlet weak var companyLabel: UILabel!
    @IBOutlet weak var codeTextField: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    
    let loginURL = "http://grupopakar.mx:8881/pollingAppWS/api/login"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //set attributes for company label
        let boldText = "Pakar"
        let normalText = "Zapaterias."
        let attrs = [NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 42)]
        let attributedString = NSMutableAttributedString(string: boldText, attributes: attrs)
        let normalString = NSMutableAttributedString(string: normalText)
        attributedString.append(normalString)
        
        companyLabel.attributedText = attributedString
        
        //position submit button always on the right
        codeTextField.rightView = submitButton
        codeTextField.rightViewMode = .always
    }
    
    // after handling correct log in, work in the transition to the next view
    
    @IBAction func submitButtonPressed() {
//        if codeTextField.text?.lowercased() == "employee" {
//            performSegue(withIdentifier: "toEmployeeScreen", sender: self)
//        } else {
//            performSegue(withIdentifier: "toUserScreen", sender: self)
//        }
        let body: [String: String] = ["access_code": codeTextField.text!]
        let header: [String: String] = ["Content-Type": "Application/json"]
        didLoginin(url: loginURL, header: header, parameters: body)
    }
    
    //function is still broken, line 53: error if responseJSON, but if responseString all codes will work.
    
    func didLoginin(url: String, header: [String: String], parameters: [String: String]) {
        Alamofire.request(url, method: .post, parameters: parameters).responseJSON {
            response in
            if response.result.isSuccess {
                print("Success")
            } else {
                print(response.result.error!)
                print("Wrong Access Code")
            }
        }
    }
}

