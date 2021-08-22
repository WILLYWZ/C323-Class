//
//  HistoryTableTableViewController.swift
//  ShrdluApp
//  Yiwei Zhu, yiwzhu@iu.edu
//  Created by Zhu, Yiwei on 3/13/20.
//  Copyright © 2020 C323 / Spring 2020. All rights reserved.
//

import UIKit

class HistoryTableViewController: UITableViewController {

    var myAppDelegate : AppDelegate?
    var myModelReference : Shrdlu?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.myAppDelegate = UIApplication.shared.delegate as! AppDelegate
        
        self.myModelReference = myAppDelegate?.myModel
        
    }

    // Number of Sections
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    // Number of Rows 
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return myModelReference?.getInputList().count ?? 0

    }
    
    // Display  Results
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "history", for: indexPath)
        let Input = myModelReference?.getInputList()
        let Output = myModelReference?.getHistoryOutput()
        
        cell.textLabel?.text = "Input: \(Input?[indexPath.row] ?? "")"
        cell.detailTextLabel?.text = "Shrdlu: \(Output?[indexPath.row] ?? "")"
        
        return cell
    }

}
