//
//  PewTableViewController.swift
//  StackView
//
//  Created by Kostya Bychkov on 10/30/15.
//  Copyright © 2015 Kostya Bychkov. All rights reserved.
//

import UIKit

class ResizableCell: UITableViewCell {
    @IBOutlet weak var pewpewLabel: UILabel!
    
    override func intrinsicContentSize() -> CGSize {
        return CGSize(
            width: 320,
            height: UIViewNoIntrinsicMetric)
    }
}

class PewTableViewController: UITableViewController {
    let texts = ["Lorem ipsum dolor sit amet, consectetur adipiscing elit...",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        "Pew pew",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.estimatedRowHeight = 44
        tableView.rowHeight = UITableViewAutomaticDimension
    }
    
    // MARK: - TableViewDataSource
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return texts.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("SomeResizableCell", forIndexPath: indexPath) as! ResizableCell
        
        cell.pewpewLabel.text = texts[indexPath.row]
        
        return cell
    }
}
