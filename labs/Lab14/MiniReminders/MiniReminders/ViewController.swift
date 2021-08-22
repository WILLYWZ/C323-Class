//
//  ViewController.swift
//  MiniReminders
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
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        let myDataReference = appDelegate.MyFirstToDoData
        
        myDataReference.addEntry(myContent.text!,
                                 category: myCategory.text!,
                                 date: myDatePicker.date,
                                 done: false)
        
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

