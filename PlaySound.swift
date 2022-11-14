//
//  PlaySound.swift
//  FinalProject
//
//  Created by Cory Wicklund on 11/13/22.
//

import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String){
    if let path = Bundle.main.path(forResource: sound, ofType: type){
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
            audioPlayer?.numberOfLoops = -1
            //audioPlayer?.stop()
        }   catch{
            print("Error: Could not find and play the sound file")
        }
    }
}
