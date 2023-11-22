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
    var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        
        print((sender.currentTitle) ?? "C")
        
        sender.alpha = 0.5
        playsound(buttonName: sender.currentTitle ?? "C")

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2 ) {
            UIView.animate(withDuration: 0.1) {
                sender.alpha = 1.0
            }
        }
       
    }
    
    func playsound(buttonName: String){
        let url = Bundle.main.url(forResource: buttonName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        
        // Check if the audio player is not nil
        if let player = player {
            // Stop the currently playing sound
            if player.isPlaying {
                player.stop()
            }
            
            // Prepare and play the new sound
            player.currentTime = 0  // Reset the playback position to the beginning
            player.prepareToPlay()
            player.play()
        }
    }

}

