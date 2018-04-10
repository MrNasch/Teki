//
//  ViewController.swift
//  Teki
//
//  Created by Paschal on 10/04/18.
//  Copyright © 2018 Nasch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let celebrities = ["le Steve jobs", "le Chuck Norris", "le Poutine", "le Ken Block", "le Superman", "le Rocco Sifredi", "le Napoleon"]
    
    let activities = ["du repéchage", "de la roulade de riz", "de la gamelle", "du drift", "de la pêche au crevette", "du créneaux", "du tape dans le fond je suis pas ta mère"]

    @IBOutlet weak var quoteLabel: UILabel!
    
    @IBAction func changeQuote() {
        let randomIndex1 = Int(arc4random_uniform(UInt32(celebrities.count)))
        let celebrity = celebrities[randomIndex1]
        
        let randomIndex2 = Int(arc4random_uniform(UInt32(activities.count)))
        let activity = activities[randomIndex2]
        
        let quote = "Tu es " + celebrity + " " + activity + " !"
        
        quoteLabel.text = quote
    }
}

