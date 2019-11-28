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
       
        //guard against no input
        guard let inputText = input.text, inputText.count > 0 else {
            output.text = "Please enter the text you would like converted"
            return
        }
    }
}

