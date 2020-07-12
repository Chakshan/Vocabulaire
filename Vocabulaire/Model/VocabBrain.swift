//
//  VocabBrain.swift
//  Vocabulaire
//
//  Created by Chakshan Kothakota on 6/9/20.
//  Copyright © 2020 Chakshan Kothakota. All rights reserved.
//

import Foundation

struct VocabBrain {
    
    let vocabulary = [
        Word(name: "abject", def: "of the most contemptible kind"),
        Word(name: "abberation", def: "a state or condition markedly different from the norm"),
        Word(name: "abjure", def: "formally reject or disavow a formerly held belief"),
        Word(name: "abnegation" , def: "the denial and rejection of a doctrine or belief"),
        Word(name: "abrogate", def: "revoke formally"),
        Word(name: "abscond", def: "run away, often taking something or somebody along"),
        Word(name: "abstruse", def: "difficult to understand"),
        Word(name: "accede", def: "yield to another's wish or opinion"),
        Word(name: "accost", def: "approach and speak to someone aggressively or insistently"),
        Word(name: "accretion", def: "an increase by natural growth or addition")
    ]
    
    var index = 0
    
    mutating func nextWord() {
        index += 1
    }
    
    func getWord() -> String {
        return vocabulary[index].name
    }
    
    func getDef() -> String {
        return vocabulary[index].def
    }
    
    mutating func setCompleted() -> Bool {
        if index == vocabulary.count {
            index = 0
            return true
        } else {
            return false
        }
    }
    
}
