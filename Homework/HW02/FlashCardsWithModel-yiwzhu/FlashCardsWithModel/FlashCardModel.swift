//
//  FlashCardModel.swift
//  FlashCardsWithModel
//
//  Created by Yiwei Zhu on 1/31/20.
//  Copyright © 2020 C323 / Spring 2020. All rights reserved.
//

import Foundation
class FlashCardModel{
    var currentQuestionIndex = 0
    var questions = ["How mush is 7+7?",
                    "In what country is Timbuktu?",
                    "What rotates when you ride a bike?",
                    "What is 12+24?",
                    "What is 232+42",
                    "Who is the current USA president?"]
    var answers = ["14","Mali","Wheels","26","274", "Donald J Trump"]
    
    init(){
        //any useful constructor code would go here
        
    }
    
    func getNextQuestion() -> String{
        self.currentQuestionIndex = self.currentQuestionIndex + 1
        
        if(self.currentQuestionIndex >= self.questions.count){
            self.currentQuestionIndex = 0
        }
        return self.questions[self.currentQuestionIndex]
}

    func getAnswer() -> String{
        return self.answers[self.currentQuestionIndex]
    }
    
}
