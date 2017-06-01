//
//  AudioPlayer.swift
//  Dicionario
//
//  Created by Felipe Silva on 01/06/17.
//  Copyright © 2017 Felipe Silva. All rights reserved.
//

import Foundation
import AVFoundation

class AudioPlayer{
    var soundUS: AVAudioPlayer!
    var soundImage: AVAudioPlayer!
    
    func playAudioUS(audioName: String){
        let path = Bundle.main.path(forResource: "Sons/\(audioName)", ofType: "mp3")
        let audioUrl = URL(fileURLWithPath: path!)
        do{
            try soundUS = AVAudioPlayer(contentsOf: audioUrl)
            soundUS.prepareToPlay()
        }catch let error as NSError {
            print(error.debugDescription)
        }
        
        if soundUS.isPlaying{
            soundUS.stop()
        }
        soundUS.play()
    }
    
    func playAudioSound(audioName: String){
        let path = Bundle.main.path(forResource: "Sons/\(audioName)_", ofType: "mp3")
        let audioUrl = URL(fileURLWithPath: path!)
        do{
            try soundImage = AVAudioPlayer(contentsOf: audioUrl)
            soundImage.prepareToPlay()
        }catch let error as NSError {
            print(error.debugDescription)
        }
        
        if soundImage.isPlaying{
            soundImage.stop()
        }
        soundImage.play()
    }
}
