//
//  ViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalListViewController: UITableViewController {
    
    var animalArray = ["Dog", "Cat", "Mouse", "Hamster", "Bunny", "Panda", "Lion", "Pig", "Frog", "Octopus"]
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animalArray.count
    }
    // this function should return a UITableViewCell
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AnimalCell", for: indexPath)
        
        let selectedAnimal = animalArray[indexPath.row]
        
//        cell.largeLabelOutlet.text =
//        cell.smallLabelOutlet.text = selectedAnimal
        
        cell.textLabel?.text = selectedAnimal
        
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AnimalDetailView" {
           
            var dest = segue.destination as! AnimalViewController
            var selectedAnimal1: String = ""
            
            if let row = tableView.indexPathForSelectedRow?.row {
                selectedAnimal1 = animalArray[row]
            }
            
            dest.animal = selectedAnimal1
        }
    }


    


    
    
    
    
    
    
}
