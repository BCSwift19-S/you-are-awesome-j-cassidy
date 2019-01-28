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
    
    func nonRepeatingRandomNumber(lastNumber:Int, maxNumber:Int) -> Int {
        var newIndex: Int
        repeat {
            newIndex = Int.random(in: 0..<maxNumber)
        } while lastNumber == newIndex
        return newIndex
    }
    
    func playSound(soundName: String, audioPlayer: inout AVAudioPlayer) {
        if let sound = NSDataAsset(name: soundName) {
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                    audioPlayer.play()
            } catch {
                print("ERROR: data in \(soundName) couldn't be played as a sound")
            }
        } else {
            print("ERROR: data in \(soundName) didn't load")
        }
    }

    @IBAction func myButtonPressed(_ sender: UIButton) {
        
        let messages = ["You Are Awesome!",
                        "You Are Great!",
                        "You Are Amazing!",
                        "You Are Fantastic!",
                        "You Are Tremendous!",
                        "You Are Unbelievable!"]
        
        //Show message
        index = nonRepeatingRandomNumber(lastNumber: index, maxNumber: messages.count)
        myMessage.text = messages[index]
        
        //Show image
        imageIndex = nonRepeatingRandomNumber(lastNumber: imageIndex, maxNumber: numberOfImages)
        myImageView.image = UIImage(named: "image\(imageIndex)")
        
        //Play sound
        soundIndex = nonRepeatingRandomNumber(lastNumber: soundIndex, maxNumber: numberOfSounds)
        let soundName = "sound\(soundIndex)"
        playSound(soundName: soundName, audioPlayer: &awesomePlayer)
        
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

