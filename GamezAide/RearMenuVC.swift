//
//  RearMenuVC.swift
//  GamezAide
//
//  Created by Rushi Patel on 4/11/16.
//  Copyright © 2016 Datasoft. All rights reserved.
//

import Foundation

class RearMenuVC: UITableViewController {
    
    var TableArray = [String]()
    
    override func viewDidLoad() {
        TableArray = ["Logout","My Teams","Add Team","Add Player","My Games","Completed Games","Scheduled Games","Schedule New Game"]
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TableArray.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        cell.textLabel?.text = TableArray[indexPath.row]
        return cell
    }
}