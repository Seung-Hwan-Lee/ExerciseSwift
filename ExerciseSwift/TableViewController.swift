//
//  TableViewController.swift
//  ExerciseSwift
//
//  Created by 이승환 on 2015. 8. 24..
//  Copyright © 2015년 이승환. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    override func viewDidLoad() {
        print(self.tableView)
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "id")
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let identifier = "id"
        let cell = tableView.dequeueReusableCellWithIdentifier(identifier, forIndexPath: indexPath)
        
        cell.textLabel?.text = "hi"
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("selected row : \(indexPath.row)")
        let viewCtrl = ArrayViewController()
        print("selected row : \(self.navigationController)")
        self.navigationController?.pushViewController(viewCtrl, animated: true)
//        self.presentViewController(viewCtrl, animated: true, completion: nil)
    }
}
