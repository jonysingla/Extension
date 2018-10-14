//
//  ViewController.swift
//  DemoExtension
//
//  Created by Jony Singla on 20/03/17.
//  Copyright © 2017 Jony Singla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var txtEmail: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        let number = 100.0
//        let boilingPointFarenheit = number.celsiusToFahrenheit()
//        print(boilingPointFarenheit)
        
        let number = 100.0
        let boilingPointFarenheit = number.adding(20)
        print(boilingPointFarenheit)

//        
//        let str = "jony@yahoo.com"
//        print(str.isValidEmail(testStr: str))
        
    }
    
    @IBAction func nextScreen(_ sender: Any) {
        
        if (txtEmail.text!.isEmpty) {
            UtilityClass.showAlert(title: "", with: "Please enter your email address", style: .alert, onView: self)
        }
            // first way without parameter
//        else
//        {
//            if  (txtEmail.text!.isValidEmail()) {
//                UtilityClass.showAlert(title: "", with:  "You enter correct email address", style: .alert, onView: self)
//            }
//            else
//            {
//                  UtilityClass.showAlert(title: "", with: "Please enter your correct Email address.", style: .alert, onView: self)
//            }
//        }
        
            // second way with parameter
        else
        {
//          let isValidEmail = UtilityClass.isValidEmail(testStr: self.txtF_email.text!)
//            let isValidEmail = String.isValidEmail(testStr: self.txtF_email.text!)
            if  (txtEmail.text!.isValidEmail(testStr: txtEmail.text!)) {
                UtilityClass.showAlert(title: "", with:  "You enter correct email address", style: .alert, onView: self)
            }
            else
            {
                UtilityClass.showAlert(title: "", with: "Please enter your correct Email address.", style: .alert, onView: self)
            }
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}


