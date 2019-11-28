//
//  ViewController.swift
//  SnowCalls
//
//  Created by Vallamkonda, Sunaina on 2019-11-28.
//  Copyright © 2019 Vallamkonda, Sunaina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: Properties
    @IBOutlet weak var input: UITextView!
    @IBOutlet weak var output: UITextView!
    
    //MARK: Initilazers
    
    //MARK: Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
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
                //for testing purposes print number line
                print(numberLine)
            }
        }
    }
}

