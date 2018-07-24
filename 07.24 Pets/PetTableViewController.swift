//
//  PetTableViewController.swift
//  07.24 Pets
//
//  Created by Linh Bouniol on 7/24/18.
//  Copyright © 2018 Linh Bouniol. All rights reserved.
//

import UIKit

class PetTableViewController: UITableViewController {

    let petController = PetController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return petController.pets.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PetCell", for: indexPath)

        // Configure the cell...
        let pet = petController.pets[indexPath.row]
        cell.textLabel?.text = pet.name
        cell.detailTextLabel?.text = pet.type

        return cell
    }
    
}
