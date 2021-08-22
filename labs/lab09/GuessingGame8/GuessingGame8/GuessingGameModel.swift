//
//  GuessinngGameModel.swift
//  GuessingGame8
//
//  Created by Yiwei Zhu on 2/11/20.
//  Copyright © 2020 C323 / Spring 2020. All rights reserved.
//

import Foundation

public class GuessingGameModel{
    @IBOutlet var OriginalLabel: UILabel!
    @IBOutlet var Label: UILabel!
    var num = 0
    var numberToBeGuessed = Int(arc4random_uniform(10))
    var numberGuessed = Int(arc4random_uniform(10))

    
    @IBAction func Lower(_sender:Any){
        numberGuessed = Int.random(in: 0...numberGuessed)
        self.Label.text = String(numberGuessed)
        if(numberToBeGuessed == numberGuessed){
        self.OriginalLabel.text = String(numberToBeGuessed)
        }
    }
    
    @IBAction func Higher(_sender:Any){
        numberGuessed = Int.random(in: numberGuessed...10)
        self.Label.text = String(numberGuessed)
        if(numberToBeGuessed == numberGuessed){
        self.OriginalLabel.text = String(numberToBeGuessed)
        }
    }

}
