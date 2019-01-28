//
//  ViewController.swift
//  YouAreAwesome!
//
//  Created by Jimmy Cassidy on 1/22/19.
//  Copyright © 2019 Jimmy Cassidy. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
   
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var myMessage: UILabel!
    var awesomePlayer = AVAudioPlayer()
    var index = -1
    var imageIndex = -1
    var soundIndex = -1
    var numberOfImages = 10
    var numberOfSounds = 6
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func myButtonPressed(_ sender: UIButton) {
        
        let messages = ["You Are Awesome!",
                        "You Are Great!",
                        "You Are Amazing!",
                        "You Are Fantastic!",
                        "You Are Tremendous!",
                        "You Are Unbelievable!"]
        
        var newIndex: Int
        
        //Show message
        repeat {
            newIndex = Int.random(in: 0..<messages.count)
        } while index == newIndex
        
        index = newIndex
        myMessage.text = messages[index]
        
        //Show image
        repeat {
            newIndex = Int.random(in: 0..<numberOfImages)
        } while imageIndex == newIndex
        
        imageIndex = newIndex
        myImageView.image = UIImage(named: "image\(imageIndex)")
        
        //Play sound
        repeat {
            newIndex = Int.random(in: 0..<numberOfSounds)
        } while soundIndex == newIndex
        
        soundIndex = newIndex
        var soundName = "sound\(soundIndex)"
        
        if let sound = NSDataAsset(name: soundName) {
            do {
                try awesomePlayer = AVAudioPlayer(data: sound.data)
                awesomePlayer.play()
            } catch {
                print("ERROR: data in \(soundName) couldn't be played as a sound")
            }
        } else {
            print("ERROR: data in \(soundName) couldn't be played as a sound")
        }
        
        
//        myMessage.text = messages.randomElement()!
//        myMessage.text = messages[index]
//
//        if index == messages.count - 1 {
//            index = 0
//        } else {
//            index += 1
//        }
//
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

