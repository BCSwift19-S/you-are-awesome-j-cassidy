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
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func myButtonPressed(_ sender: UIButton) {
        
        let messages = ["You Are Awesome!", "You Are Great!", "You Are Amazing!"]
       
        myMessage.text = messages[index]
        
        if index == messages.count - 1 {
            index = 0
        } else {
            index += 1
        }
        
//        let message1 = "You Are Awesome!"
//        let message2 = "You Are Great!"
//        let message3 = "You Are Amazing!"
//
//        if myMessage.text == message1 {
//            myMessage.text = message2
//        } else if myMessage.text == message2 {
//            myMessage.text = message3
//        } else {
//            myMessage.text = message1
//        }
    }
    
}

