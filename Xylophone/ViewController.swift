//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // play C sound when button is pressed
    @IBAction func keyPressed(_ sender: UIButton) {
        let key = sender.currentTitle!
        print("button pressed \(key)")
        playSound(key: key)
    }

    func playSound(key: String = "C") {
        let url = Bundle.main.url(forResource: key, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player!.play()
    }
}

