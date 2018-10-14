//
//  secondViewController.swift
//  DemoExtension
//
//  Created by Jony Singla on 20/03/17.
//  Copyright © 2017 Jony Singla. All rights reserved.
//

import Foundation


extension Integer {
    
    func adding(a: Int, b: Int ) -> Int {
        return (a+b)
    }
    
    func substracting(a: Int, b: Int ) -> Int
    {
        return (a-b)
    }
}

extension String
{
    // first way without parameter
//    func isValidEmail()-> Bool {
//        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}"
//        return NSPredicate(format: "SELF MATCHES %@", emailRegex).evaluate(with: self)
//    }
    
    // second way with parameter
    func isValidEmail(testStr:String) -> Bool {
        
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: testStr)
    }
}
