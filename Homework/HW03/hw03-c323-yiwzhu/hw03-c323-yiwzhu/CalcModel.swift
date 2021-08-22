//
//  ViewController.swift
//  CalculatorB
//
//  Created by Yiwei Zhu on 2/4/20.
//  Copyright © 2020 C323 / Spring 2020. All rights reserved.
//
// Yiwei Zhu, yiwzhu//
// Homework 03 - C323 / Spring 2020 //


import Foundation
class CalcModel{
    //declare viariables
    var firstOperand: Int
    var secondOperand: Int
    var operation: Int
    
    //initialized the variables, similiar to the constructors in Java and Python
    init(_ firstOperand:Int, _ secondOperand: Int, _ operation: Int){
        self.firstOperand = firstOperand
        self.secondOperand = secondOperand
        self.operation = operation

    }
    
    //set the variables
    func setFirstOperand(_ num: Int){
        firstOperand = num
    }
    //set the variables
    func setSecondOperand(_ num: Int){
        secondOperand = num
    }
    //set the variables
    func setOperation(_ num: Int){
        operation = num
    }
    
    // formulas for divide, multiply, subtract, and add
    func divide() -> Int{
        return(firstOperand / secondOperand)
    }
    func times() -> Int{
        return(firstOperand * secondOperand)
    }
    func subtract() -> Int{
        return(firstOperand - secondOperand)
    }
    func add() -> Int{
        return(firstOperand + secondOperand)
    }
    
    func operations( ) ->Int{
        var answer = 0
        if(operation == 1){
            answer = divide()
        }
        if(operation == 2){
            answer = times()
        }
        if(operation == 3){
            answer = subtract()
        }
        if(operation == 4){
            answer = add()
        }
        return answer
    }
}
