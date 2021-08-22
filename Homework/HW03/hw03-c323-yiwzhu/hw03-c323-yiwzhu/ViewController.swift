//
//  ViewController.swift
//  CalculatorB
//
//  Created by Yiwei Zhu on 2/4/20.
//  Copyright © 2020 C323 / Spring 2020. All rights reserved.
//
// Yiwei Zhu, yiwzhu//
// Homework 03 - C323 / Spring 2020 //


// Before the assignment, i watched a tutorial of how other make a normal calculator. The link
// is here: https://www.instructables.com/id/How-to-Make-a-Calculator-in-Xcode-Using-Swift/

// i also got inspiration and ideas from https://github.com/fnk0/iOS-Calculator-Tutorial

// Some of the links i used are:
// some in chinese
// https://learnappmaking.com/loops-swift-how-to/
// https://developer.apple.com/documentation/swift/binaryinteger
// https://freakycoder.com/ios-notes-43-how-to-convert-integer-to-a-binary-string-55d3ef570fbb
// https://www.jianshu.com/p/34d5e958910a
// https://www.cnblogs.com/Free-Thinker/p/7243683.html
// https://www.hackingwithswift.com/example-code/strings/how-to-concatenate-strings-to-make-one-joined-string
// https://medium.com/ios-os-x-development/switch-cases-in-swift-29366716242d
// https://www.hackingwithswift.com/read/0/10/switch-case
// https://stackoverflow.com/questions/24196689/how-to-get-the-power-of-some-integer-in-swift-language
// https://forums.swift.org/t/rounding-numbers-up-down-to-nearest-multiple-and-power/15547
// https://developer.apple.com/documentation/swift/double/2884722-round
// https://stackoverflow.com/questions/24161336/convert-int-to-string-in-swift
// https://docs.swift.org/swift-book/ReferenceManual/Declarations.html
// https://docs.swift.org/swift-book/LanguageGuide/TheBasics.html
// and some of the references disappear in search history as i signed out of the lab computer.


import UIKit

class ViewController: UIViewController {
    
    //Declare variables
    @IBOutlet var calcDisplay: UILabel!
    @IBOutlet weak var one: UIButton!
    @IBOutlet weak var zero: UIButton!
    
    //Declare variables
    @IBOutlet weak var divide: UIButton!
    @IBOutlet weak var times: UIButton!
    @IBOutlet weak var subtract: UIButton!
    @IBOutlet weak var add: UIButton!
    @IBOutlet weak var equal: UIButton!
    @IBOutlet weak var AC: UIButton!
    
    //Declare variables
    @IBOutlet weak var mPlus: UIButton!
    @IBOutlet weak var mMinus: UIButton!
    @IBOutlet weak var MR: UIButton!
    @IBOutlet weak var MC: UIButton!
    @IBOutlet weak var plusMinus: UIButton!

    //Declare variables
    var numberIsBeingEntered = false
    var MyModel: CalcModel = CalcModel(0,0,0)
    var temp = ""
    var memory = ""
    var stored = 0
    
    
    // add to the temp string of button one and buttom zero is pressed
     //Reset the text when you pressed the integer button
    @IBAction func pressedDigit(_ sender: UIButton){
        let reset = ""
        if(numberIsBeingEntered == true){
            numberIsBeingEntered = false
            temp = reset
        }
        switch sender{
            case one:
                temp += "1"
                calcDisplay.text = temp
            case zero:
                temp += "0"
                calcDisplay.text = temp
            default:
                break
        }
    }
    
// In my referenced links, I found out there is a way to loop through each digit of a string, i tried it,
// but i found out that the method, for i in temp.charcaters, is no old, and is no longer working in newer
// version of swift.
    
// I found out that on apple's website, that is still ways to loop strings, here is the links
// https://developer.apple.com/documentation/swift/string/1786175-index
// I also looked at https://www.dotnetperls.com/range-swift, which i thought is helpful with dozen of examples.
    
// for the binary formula, i used the calculator link provided on course website, and searched for power in swift
// found https://developer.apple.com/documentation/foundation/1779833-pow
// it's' difficult to change types and get the type wanted, we want double because the power method outputs as
// double, but with https://stackoverflow.com/questions/24031621/swift-how-to-convert-string-to-double and
// https://supereasyapps.com/blog/2015/9/28/how-to-convert-strings-into-double-and-float-values-using-swift-2
// and ideas from classmates, i finally got it.
    
    func binary() -> Int{
        var sum = 0
        var num = Double(temp.count - 1)
        var place = 0
        var flag = 0
        while(flag < temp.count){ // Using while loop to count times need to add
            let index = temp.index(temp.startIndex, offsetBy: place) // Using this function to separate string to piece by piece
            let string = String(temp[index])
            let form = Double(string)!
            let result = Int(pow(2, num) * form)
            sum += result
            num -= 1
            place += 1
            flag = place
        }
        memory = temp
        return sum
        }
    
// from apple's developer website, https://developer.apple.com/documentation/swift/int/2924481-init
    func decimal(_ val: Int)-> String{
        let string = String(val, radix:2)
        return string
    }
    
// 0 - value give us negatives, two case are exceptions, 0 and empty string, however, 0 does not require action,
// because, 0 is neither positive, or negative, and i make empty string case return empty String.
    func sign() -> String{
        let flip = 0 - Int(temp)!
        var result = String(flip)

        if(temp == ""){
            result = ""
        }
        temp = result
        return result
    }
    
// case is very similar for divide, multiply, subtract, and add, all of them calls functions in CalcModel, and reset the previous in order to get the next number.
    
// For memory, i think i haven't fully understand their properties, because I never used them.
// but, i searched and found out that memory is just another variable for storing variables, so i made
// memory = temp every time it did an calculation.
    
    @IBAction func pressedOperation(_ sender: UIButton){
        let reset = ""
        switch sender {
        case divide:
            MyModel.setFirstOperand(binary())
            MyModel.setOperation(1)
            temp = reset
            
        case times:
            MyModel.setFirstOperand(binary())
            MyModel.setOperation(2)
            temp = reset

        case subtract:
            MyModel.setFirstOperand(binary())
            MyModel.setOperation(3)
            temp = reset

        case add:
            MyModel.setFirstOperand(binary())
            MyModel.setOperation(4)
            temp = reset
            
        case equal:
           MyModel.setSecondOperand(binary())
           stored = MyModel.operations()
           temp = decimal(stored)
           calcDisplay.text = temp
           numberIsBeingEntered = true
          
        case AC:
            calcDisplay.text = "0"
            temp = reset
            
        case mMinus:
            MyModel.setFirstOperand(binary())
            MyModel.setSecondOperand(binary())
            stored = MyModel.subtract()
        
            temp = decimal(stored)
            calcDisplay.text = temp
            memory = temp
            numberIsBeingEntered = true
       
        case mPlus:
            MyModel.setFirstOperand(binary())
            MyModel.setSecondOperand(binary())
            stored = MyModel.add()
            
            temp = decimal(stored)
            calcDisplay.text = temp
            memory = temp
            numberIsBeingEntered = true
            
        case MR:
            calcDisplay.text = memory
            
        case MC:
            memory = "0"
            calcDisplay.text = memory
            
        case plusMinus:
            calcDisplay.text = sign()

            
        default:
            numberIsBeingEntered = false
            break
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}



