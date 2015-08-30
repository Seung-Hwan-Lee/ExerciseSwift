//
//  TableViewController.swift
//  ExerciseSwift
//
//  Created by 이승환 on 2015. 8. 24..
//  Copyright © 2015년 이승환. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    let menuList = ["Basics", "Operators", "Strings and Characters"]
    let viewCtrlList = [BasicViewController(), ArrayViewController(), ArrayViewController()]
    
    override func viewDidLoad() {
        print(self.tableView)
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "id")

    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuList.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let identifier = "id"
        let cell = tableView.dequeueReusableCellWithIdentifier(identifier, forIndexPath: indexPath)
        
        cell.textLabel?.text = menuList[indexPath.row]
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("selected row : \(indexPath.row)")
        let viewCtrl = viewCtrlList[indexPath.row] as! UIViewController
        print("selected row : \(self.navigationController)")
        self.navigationController?.pushViewController(viewCtrl, animated: true)
//        self.presentViewController(viewCtrl, animated: true, completion: nil)
        
    }
}
