//
//  ViewController.swift
//  EmebbedReminders
//
//  Created by Yiwei Zhu on 2/27/20.
//  Copyright © 2020 C323 / Spring 2020. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myContent: UITextField!
    @IBOutlet weak var myCategory: UITextField!
    @IBOutlet var myDatePicker: UIDatePicker!
    
    @IBAction func addReminder(_sender: Any){
        let lAppDelegate = UIApplication.shared.delegate as! AppDelegate
        
        
        let lDataModel = lAppDelegate.myRemindersData
        
        lDataModel.addReminder(Content: self.myContent.text ?? "Smile",
                               category: self.myCategory.text ?? "Mood",
                               DateDue: self.myDatePicker.date,
                               doneFlag: false)
        
        if let lContainerTabBarController = self.tabBarController{
            
            if let lSiblingsViewControllers = lContainerTabBarController.viewControllers{
                
                if lSiblingsViewControllers.count > 1 {
                    
                    print("The lSiblingsViewController[0] is \(lSiblingsViewControllers[0])")
                    print("The lSiblingsTabController[1] is \(lSiblingsViewControllers[1])")
                    
                    
                }
            }
        }

    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

