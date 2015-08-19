//
//  InterfaceController.swift
//  howManyFingers WatchKit Extension
//
//  Created by Yatoomy Grey on 2015-08-19.
//  Copyright © 2015 Neutun Labs. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var guess: WKInterfaceSlider!
    
    @IBOutlet var guessLabel: WKInterfaceLabel!
    
    @IBOutlet var resultLabel: WKInterfaceLabel!
    
     var guessNumber:Int = 3
    
    @IBAction func guessUpdated(value: Float) {
        
        guessNumber = Int(value * 5)
            
        guessLabel.setText("Your Guess: \(guessNumber)")
        
    }
    
    @IBAction func guessPressed() {
    
        var randomNumber = Int(arc4random_uniform(6))
        
        if randomNumber == guessNumber {
            
            resultLabel.setText("Correct!")
        }
        else{
            resultLabel.setText("Wrong! Was \(randomNumber)")
        }
    }
   
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
