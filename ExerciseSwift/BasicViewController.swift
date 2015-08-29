//
//  BasicViewController.swift
//  ExerciseSwift
//
//  Created by 이승환 on 2015. 8. 28..
//  Copyright © 2015년 이승환. All rights reserved.
//

import UIKit

class BasicViewController : UIViewController {
    
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor.whiteColor()
        
//        var ss : String, aa: Int
//        ss = "ss"
//        aa = 11
//        
//        print(ss + String(aa))
        
//        var aa = Int8.max
//        var ab = Int16.min
////        var ac : UInt32
////        var ad : UInt64
//        print("\(aa) , \(ab)")
        
        exerciseTuple()

        
//        declaringConstantsAndVariables()
    }
    
    func declaringConstantsAndVariables() {
        let constant1 = 1
        var variable1 = 2
        variable1 = 3
        
        print("\(constant1), \(variable1)" + "xx")
    }
    
    func exerciseTuple() {
        let http500serverError = (status:500, message:"Server Error")
//        let (statusCode, Message) = http500serverError
//        print(String(statusCode) + ", " + Message)
//        let (statusCode, _) = http500serverError
        print(String(http500serverError.status) + ", " + http500serverError.message)
    }
}