//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // IBOutlet allows me to reference a UI element
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    var leftDiceNumber = 0
    var rightDiceNumber = 0
    let diceArray = [UIImage(named: "DiceOne"),
                    UIImage(named: "DiceTwo"),
                    UIImage(named: "DiceThree"),
                    UIImage(named: "DiceFour"),
                    UIImage(named: "DiceFive"),
                    UIImage(named: "DiceSix"),]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        diceImageView1.image = UIImage(named: "DiceSix")
        diceImageView1.alpha = 0.5
        
        diceImageView2.image = UIImage(named: "DiceTwo")
        diceImageView1.alpha = 0.5
        
    }
    
    @IBAction func rollButtonPress(_ sender: UIButton) {
        leftDiceNumber = Int.random(in: 0...5)
        rightDiceNumber = 5 - leftDiceNumber
        diceImageView1.image = diceArray[leftDiceNumber]
        diceImageView2.image = diceArray[rightDiceNumber]
        
    }
    

}

