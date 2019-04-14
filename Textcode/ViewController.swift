//
//  ViewController.swift
//  Textcode
//
//  Created by Nico Rohrbach on 13.04.19.
//  Copyright © 2019 Nico Rohrbach. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    @IBOutlet weak var inputField: NSTextField!
    @IBOutlet weak var outputField: NSTextField!
    
    @IBAction func inputFieldAction(_ sender: Any) {
        outputField.stringValue = unicodeScalarsFromString(inputString: String(inputField.stringValue) )
    }
    
}

func unicodeScalarsFromString(inputString: String) -> String {
    let scalarString = Array(inputString.unicodeScalars)
    var out_string = String()
    for individual_scalar in scalarString {
        out_string += individual_scalar.properties.name! + " (U+" + String(individual_scalar.value, radix: 16).uppercased() + ")\n"
    }
    return out_string.trimmingCharacters(in: .whitespacesAndNewlines)
}
