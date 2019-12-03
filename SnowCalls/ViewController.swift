//
//  ViewController.swift
//  SnowCalls
//
//  Created by Vallamkonda, Sunaina on 2019-11-28.
//  Copyright © 2019 Vallamkonda, Sunaina. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate  {
    
    //MARK: Properties
    @IBOutlet weak var input: UITextView!
    @IBOutlet weak var output: UITextView!
    
    //MARK: Initilazers
    
    //MARK: Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //make this class be the delgate for the input text field
        input.delegate = self
        
        //Give the focus to the input text view when the program begins
        input.text = ""
        output.text = ""
        input.becomeFirstResponder() //set the focus on input field
    }
    
    // Convert inputed text to phone numbers
    @IBAction func convert(_ sender: Any) {
        
        //clear output every timebutton is pressed
        output.text = ""
        
        //guard against no input
        guard let inputText = input.text, inputText.count > 0 else {
            output.text = "Please enter the text you would like converted"
            return
        }
        
        //empty string to build phone number
        var numberLine = ""
        
        //chop input into individual lines
        let lines = inputText.split(separator: "\n")
        
        //iterate for every line
        for line in lines{
            
            //iterate over every character in each line
            for character in line{
                
                // Only add an output chracter when we have less than 10 output characters
                if numberLine.count < 12 {
                    
                    //switch statement to convert characters and add them to numberLine string
                    switch character {
                    case "0":
                        numberLine += "0"
                    case "1":
                        numberLine += "1"
                    case "2","a","A","b","B","c","C":
                        numberLine += "2"
                    case "3","d","D","e","E","f","F":
                        numberLine += "3"
                    case "4","g","G","h","H","i","I":
                        numberLine += "4"
                    case "5","j","J","k","K","l","L":
                        numberLine += "5"
                    case "6","m","M","n","N","o","O":
                        numberLine += "6"
                    case "7","p","P","q","Q","r","R","s","S":
                        numberLine += "7"
                    case "8","t","T","u","U","v","V":
                        numberLine += "8"
                    case "9","w","W","x","X","y","Y","z","Z":
                        numberLine += "9"
                    default:
                        numberLine += ""
                    }
                    if numberLine.count == 3 || numberLine.count == 7 {
                        numberLine += "-"
                    }
                }
                
                
            }
            
            
        }
        
        //for testing purposes print numberLine
        print(numberLine)
        
        
    }

//MARK: UITextViewDelagates Methods
    
    //Called automatically when the contents of the text view are changed
    func textViewDidChange(_ textView: UITextView) {
        
        //Reset output text view
        output.text = ""
    }

}

