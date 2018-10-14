//
//  ViewController.swift
//  DemoExtension
//
//  Created by Jony Singla on 20/03/17.
//  Copyright © 2017 Jony Singla. All rights reserved.
//

import UIKit

class UtilityClass: NSObject {
    
    
    class func showAlert(title:String, with message:String, style:UIAlertControllerStyle, onView _view:AnyObject){
        let alert = UIAlertController(title: title, message: message, preferredStyle: style)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        _view.present(alert, animated: true, completion: nil)
    }
    
}
