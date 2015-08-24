//
//  ArrayViewController.swift
//  ExerciseSwift
//
//  Created by 이승환 on 2015. 8. 24..
//  Copyright © 2015년 이승환. All rights reserved.
//

import UIKit

class ArrayViewController: UIViewController {
    
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor.whiteColor()
    }
    
    override func viewDidAppear(animated: Bool) {
        let alertViewCtrl = UIAlertController(title: "Array Exercise", message: "Array!", preferredStyle: .Alert)
        
        let alertAction = UIAlertAction(title: "OK", style: .Cancel) { action -> Void in
            
        }
        alertViewCtrl.addAction(alertAction)
        
        self.presentViewController(alertViewCtrl, animated: true, completion: nil)
    }
}