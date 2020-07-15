//
//  SetListViewController.swift
//  Vocabulaire
//
//  Created by Chakshan Kothakota on 7/14/20.
//  Copyright © 2020 Chakshan Kothakota. All rights reserved.
//

import UIKit

class SetListViewController: UITableViewController {
    
    let itemsArray = ["Set 1", "Set 2", "Set 3"]

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
    }
    
    @IBAction func returnHomePressed(_ sender: UIButton) {
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemsArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: K.setCellIdentifier, for: indexPath)
        cell.textLabel?.text = itemsArray[indexPath.row]
        cell.textLabel?.textColor = .white
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: K.setSelectedSegue, sender: self)
    }
    

}
