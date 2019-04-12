//
//  ViewController.swift
//  Dicee
//
//  Created by ali on 3/28/19.
//  Copyright © 2019 ali. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var rindx1 : Int = 0
    var rindx2 : Int = 0
    
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice5","dice6"]
    
    @IBOutlet weak var diceImage1: UIImageView!
    @IBOutlet weak var diceImage2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      updateDiceImage()
    }

    @IBAction func rollButton(_ sender: Any) {
        updateDiceImage()
    }
    
    func updateDiceImage() {
        rindx1 = Int(arc4random_uniform(6))
        rindx2 = Int(arc4random_uniform(6))
        
        diceImage1.image = UIImage(named: diceArray[rindx1])
        diceImage2.image = UIImage(named: diceArray[rindx2])
        }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImage()
    }
}
