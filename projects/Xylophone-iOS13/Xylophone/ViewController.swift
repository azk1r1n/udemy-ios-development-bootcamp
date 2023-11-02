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
    var audioPlayer: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Get the URL of the sound file
        if let soundURL = Bundle.main.url(forResource: "C", withExtension: "wav") {
            do {
                // Initialize the audio player with the sound file URL
                audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
            } catch {
                print("Error loading sound file: \(error.localizedDescription)")
            }
        } else {
            print("Sound file not found in the Sounds directory.")
        }
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        // Check if the audio player is not nil
        if let player = audioPlayer {
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

