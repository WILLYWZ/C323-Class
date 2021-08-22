//
//  ViewController.swift
//  FlashCards
//
//  Created by Yiwei Zhu on 1/23/20.
//  Copyright © 2020 C323 / Spring 2020. All rights reserved.
//

import UIKit

class LabFourViewController: UIViewController {
    
    @IBOutlet var answerLabel:UILabel!
    @IBOutlet var QuestionLabel:UILabel!
    var num = 0

    @IBAction func showQuestion(_sender:Any){
        self.QuestionLabel.text = "How old are you?"
        self.answerLabel.text = "(...try guessing...)"
        num += 1;
    }
    
    @IBAction func showAnswer(_sender:Any){
        if(num > 0){
        self.answerLabel.text = "I'm almost 6 years old! (that was the swift programming language's answer)"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

