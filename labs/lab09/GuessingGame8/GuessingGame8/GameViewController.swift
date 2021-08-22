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
    var myAppDelegate: AppDelegate?
    var MyModel: GuessingGameModel?
    @IBOutlet weak var inputTextField: UITextField!
    
    @IBAction func getTextFieldInput(_sender: UITextField, forEvent: UIEvent){
        print("in getTextFieldInput() \(_sender.text ?? "")")
    }
    
    
    @IBAction func enterGuessAction(_ sender: UIButton){
        let lTheEnteredGuess = self.inputTextField.text ?? ""
        
        print("the user just entered \(lTheEnteredGuess)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

