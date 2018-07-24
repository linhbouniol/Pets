//
//  PetController.swift
//  07.24 Pets
//
//  Created by Linh Bouniol on 7/24/18.
//  Copyright © 2018 Linh Bouniol. All rights reserved.
//

import Foundation

class PetController {
    
    var pets: [Pet] = []
    
    init() {
        createPet(withName: "Mimi", type: "Russian Blue")
        createPet(withName: "Pork Bun", type: "Scottish Fold")
        createPet(withName: "Mochi", type: "Bengal")
        createPet(withName: "Neko", type: "Japanese Bobtail")
        createPet(withName: "Wish List:", type: "Panda")
        createPet(withName: "Wish List:", type: "Husky")
        createPet(withName: "Wish List:", type: "Pomeranian")
    }
    
    func createPet(withName name: String, type: String) {
        let pet = Pet(name: name, type: type)
        
        pets.append(pet)
        
    }
}
