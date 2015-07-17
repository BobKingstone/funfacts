//
//  ViewController.swift
//  FunFacts
//
//  Created by Bob on 16/07/2015.
//  Copyright (c) 2015 Bob. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
    
    let funFact = FactBook()
    let colorWheel = ColorWheel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        funFactLabel.text = funFact.randomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFunFact() {
        
        var randomColor = colorWheel.randomColor()
        
        view.backgroundColor = randomColor
        
        funFactButton.tintColor = randomColor
        
        funFactLabel.text = funFact.randomFact()
        
    }

}

