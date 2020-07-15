//
//  MissionCompleteViewController.swift
//  Vocabulaire
//
//  Created by Chakshan Kothakota on 6/9/20.
//  Copyright © 2020 Chakshan Kothakota. All rights reserved.
//

import UIKit

class MissionCompleteViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func returnHomePressed(_ sender: UIButton) {
        self.view.window?.rootViewController?.dismiss(animated: true, completion: nil)
    }
    

}
