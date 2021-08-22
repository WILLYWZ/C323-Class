//
//  RemindersTableViewController.swift
//  EmebbedReminders
//
//  Created by Yiwei Zhu on 3/3/20.
//  Copyright © 2020 C323 / Spring 2020. All rights reserved.
//

import UIKit

class remindersTableViewController: UITableViewController {

    var myAppDelegate : AppDelegate?
    var myModelReference : MiniRemindersDataModel?
    
    
    //let myDataReference = appDelegate.MyFirstToDoData
    
    //myDataReference.addEntry(myContent.text!,
     //                        category: myCategory.text!,
    //                         date: myDatePicker.date,
     //                        done: false)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.myAppDelegate = UIApplication.shared.delegate as! AppDelegate
    
        self.myModelReference = myAppDelegate?.myRemindersData
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReminderCell", for: indexPath) as! ReminderTableViewCell

        // Configure the cell...

        if let lModel = self.myModelReference{
            
            // get reference to array of reminder items from model:
            let lDataArray = lModel.getReminders()
            
            // get one remainder item from the array
            let lReminderItem = lDataArray[indexPath.row]
            
            //populate labels:
            cell.reminderLabel.text = "Reminder: \(lReminderItem.theContent)"
            cell.reminderLabel.text = "Category: \(lReminderItem.theCategory)"
            
        }
        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
