//
//  BasicViewController.swift
//  ExerciseSwift
//
//  Created by 이승환 on 2015. 8. 28..
//  Copyright © 2015년 이승환. All rights reserved.
//

import UIKit

typealias VV = String

class BasicViewController : UIViewController {
    
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor.whiteColor()
        
        let con = (status:404, message:"not found")
        print(con.status)
        print(con.message)

//        let (status, message) = (404, "not found")
//        print(status)
//        print(message)
//
//        let (status, message) = (404, "not found")
//        print(status)
//        print(message)
    }
    
}