//
//  Shrdlu.swift
//  ShrdluApp
//  Yiwei Zhu, yiwzhu@iu.edu
//  Created by Yiwei Zhu on 3/10/20.
//  Copyright © 2020 C323 / Spring 2020. All rights reserved.
//

import Foundation

class Shrdlu{
    // Five catergories with words inside
    let joyWords: [String] = ["happy", "happiness", "joy", "yay", "great"]
    let disgustWords: [String] = ["hate", "disguested", "sick", "nasty","awful"]
    let fearWords: [String] = ["panic", "horror", "scary", "afraid","nervous"]
    let angerWords: [String] = ["anry", "mad", "outraged", "rage","wrath"]
    let sadWords: [String] = ["sorrow", "depressed", "down", "sad","not happy"]
        
    // Output lines
    var output:[String] = ["Tell me more.",
                                  "What made you happy? Mind Sharing with Me?"
                                ,"I feel Bad for You. I really do."
                                ,"We have nothinng to fear but fear itself. We will get through this together!"
                                ,"What Happened? I'm always here for you. You Know, I'm a great listener."
                                ,"Everything will Be better. You can always talk to me."]
    
    var text: String = ""
    var inputStrings:[String] = []
    var outputStrings: [String] = []

    func setText(_ txt:String){
        text = txt
        inputStrings.append(text)
    }
    
    // Seperate words from input line
    func getWords() -> [String]{
        
        let words = text.lowercased().components(separatedBy: "\n")

        let wordsList = words[0].components(separatedBy: " ")
        
        return wordsList
    }
    
    // Main function
    func oneInteraction()-> String{
        let line = getWords()
        var returns = output[0]
        
    
        for i in joyWords{
            if line.contains(i){
                returns = output[1]
            }
        }
        
        for i in disgustWords{
            if line.contains(i){
                returns = output[2]
            }
        }
        
        for i in fearWords{
            if line.contains(i){
                returns = output[3]
            }
        }
        
        for i in angerWords{
            if line.contains(i){
                returns = output[4]
            }
        }
        
        for i in sadWords{
            if line.contains(i){
                returns = output[5]
            }
        }
        
        outputStrings.append(returns)
        return returns
    }
    
    // Return Input String list
    func getInputList() -> [String]{
        return self.inputStrings
    }
    
    // Return Output String list
    func getHistoryOutput() -> [String]{
        return self.outputStrings
    }
    
}
