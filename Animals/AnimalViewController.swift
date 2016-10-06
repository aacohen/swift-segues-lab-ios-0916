//
//  AnimalViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalViewController: UIViewController {
    @IBOutlet weak var largeLabelOutlet: UILabel!
    
    @IBOutlet weak var smallLabelOutlet: UILabel!
    var animal: String?
    
    override func viewWillAppear(_ animated: Bool) {
        if let animal = animal {
        smallLabelOutlet.text = animal
        largeLabelOutlet.text = animalEmoji(animal: animal)
        print("This is the value of animal \(animal)")
        }
    }
    
    func animalEmoji(animal: String) -> String {
        
        switch animal{
            
        case "Dog":
            return "🐶"
        case "Cat":
            return "🐱"
        case "Mouse":
            return "🐭"
        case "Hamster":
            return "🐹"
        case "Bunny":
            return "🐰"
        case "Panda":
            return "🐼"
        case "Lion":
            return "🦁"
        case "Pig":
            return "🐷"
        case "Frog":
            return "🐸"
        case "Octopus":
            return "🐙"
        default:
            return ""
        }
    }
    
    
    
}
