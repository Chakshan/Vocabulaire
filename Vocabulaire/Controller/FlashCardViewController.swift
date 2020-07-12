//
//  FlashCardViewController.swift
//  Vocabulaire
//
//  Created by Chakshan Kothakota on 6/9/20.
//  Copyright © 2020 Chakshan Kothakota. All rights reserved.
//

import UIKit

class FlashCardViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var defLabel: UILabel!
    
    
    var vocabBrain = VocabBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateWord()
    }
    
    @IBAction func checkDefPressed(_ sender: UIButton) {
        defLabel.text = vocabBrain.getDef()
    }
    
    
    @IBAction func nextWordPressed(_ sender: UIButton) {
        vocabBrain.nextWord()
        if vocabBrain.setCompleted() {
            performSegue(withIdentifier: K.missionCompleteSegue, sender: self)
        }
        updateWord()
    }
    
    func updateWord() {
        label.text = vocabBrain.getWord()
        defLabel.text = ""
    }
}
