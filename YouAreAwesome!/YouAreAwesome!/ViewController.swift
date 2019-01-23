//
//  ViewController.swift
//  YouAreAwesome!
//
//  Created by Jimmy Cassidy on 1/22/19.
//  Copyright © 2019 Jimmy Cassidy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var myMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func myButtonPressed(_ sender: UIButton) {
        let message1 = "You Are Awesome!"
        let message2 = "You Are Great!"
        let message3 = "You Are Amazing!"
        
        if myMessage.text == message1 {
            myMessage.text = message2
        } else if myMessage.text == message2 {
            myMessage.text = message3
        } else {
            myMessage.text = message1
        }
    }
    
}

