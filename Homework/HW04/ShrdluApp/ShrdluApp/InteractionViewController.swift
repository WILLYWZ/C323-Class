//
//  ViewController.swift
//  ShrdluApp
//  Yiwei Zhu, yiwzhu@iu.edu
//  Created by Yiwei Zhu on 3/10/20.
//  Copyright © 2020 C323 / Spring 2020. All rights reserved.
//

import UIKit

class InteractionViewController: UIViewController {
    
    @IBOutlet weak var sendInput: UIButton!
    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var textField: UITextView!
    
    var myAppDelegate : AppDelegate?
    var myModelReference : Shrdlu?
    
    // Send Input Buttom Function
    @IBAction func sendInput(_ sender: UIButton){
        
        let currentTxt = input.text!
        let string = currentTxt
        
        let line = "\n -> " + currentTxt
        textField.text += line
        
        self.myModelReference?.setText(string)
        let action = "\n >> " + (myModelReference?.oneInteraction() ?? "")
        textField.text += action
                
        if let controller = self.tabBarController{
            if let sibling = controller.viewControllers{
                if sibling.count > 1{
                    if let tableview = sibling[1] as? UITableViewController{
                        if let tableview = tableview.view as? UITableView{
                            tableview.reloadData()
                        }
                    }
                }
            }
        }
        self.view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.myAppDelegate = UIApplication.shared.delegate as! AppDelegate
        
        self.myModelReference = myAppDelegate?.myModel
        
    }
    
}

