//
//  GameViewController.swift
//  GuessingGame8
//
//  Created by Yiwei Zhu on 2/6/20.
//  Copyright © 2020 C323 / Spring 2020. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

    var mySecret = "The Secret"
    
    @IBAction func getTextFieldInput(_sender: UITextField, forEvent: UIEvent){
        print("in getTextFieldInput() \(_sender.text ?? "")")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

