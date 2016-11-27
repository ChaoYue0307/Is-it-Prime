//
//  ViewController.swift
//  Is it Prime
//
//  Created by He Chaoyue on 11/27/16.
//  Copyright © 2016 He Chaoyue. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var numberTextfield: UITextField!
    @IBAction func isItPrime(_ sender: Any) {
        
        if let userEnteredString = numberTextfield.text {
            
            let userEnteredInteger = Int(userEnteredString)
            
            if let number = userEnteredInteger {
                
                var isPrime = true
                if number == 1 {
                    isPrime = false
                }
                var i = 2
                while i < number {
                    if number % i == 0 {
                        isPrime = false
                }
                    
                    i += 1
                }
                
                if isPrime {
                    resultLabel.text = "\(number) is a prime"
                } else {
                    resultLabel.text = "\(number) is not a prime"
                }
                
            }else{
                
                resultLabel.text = "Please enter a positive whole number"
                
            }

        }
            }
    @IBOutlet var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

