// C323 Mobile App Development - Mitja Hmeljak Spring 2020
//
//  examples in the Swift programming language
//
//  Note: the following Swift code will run correctly
//        from swift command-line
//

import Foundation     // for random numbers with arc4random_uniform()
    
var game = true
var numberToBeGuessed = Int(arc4random_uniform(10))

    
while(game){
    print("Input your number between 0 -10.)")
    var numberGuessed = readLine()!
    var num = Int(numberGuessed) ?? 0
    
    if(numberToBeGuessed > num){
        print("Incorrect! Try higher.")
    }else if(numberToBeGuessed < num){
        print("Incorrect! Try lower.")
    }else{
        print("You got the number!")
        game = false
    }
}
            
    
