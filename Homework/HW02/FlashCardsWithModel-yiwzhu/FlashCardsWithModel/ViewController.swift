//
//  ViewController.swift
//  FlashCardsWithModel
//
//  Created by Yiwei Zhu on 1/23/20.
//  Copyright © 2020 C323 / Spring 2020. All rights reserved.
//

import UIKit

class LabFourViewController: UIViewController {
    
    @IBOutlet var answerLabel:UILabel!
    @IBOutlet var QuestionLabel:UILabel!
    var num = 0

    let myFlashCardModel = FlashCardModel()
    
    @IBAction func showQuestion(_sender:Any){
        let QuestionList: String = self.myFlashCardModel.getNextQuestion()
        
        self.QuestionLabel.text = QuestionList
        self.answerLabel.text = "(...try guessing...)"
        num += 1;
    }
    
    @IBAction func showAnswer(_sender:Any){
        if(num > 0){
            let AnswerList: String = self.myFlashCardModel.getAnswer()
            self.answerLabel.text = AnswerList
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

