//
//  Text_speechtext.swift
//  temp1
//
//  Created by miaoz on 2019/5/7.
//  Copyright © 2019 Rohlf W. All rights reserved.
//


import UIKit
import Speech
import SwiftyJSON
import AVFoundation

extension FirstViewController{
    func speakText(voiceOutdata: String,lautype:String) {
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playAndRecord, mode: .default, options: .defaultToSpeaker)
            try AVAudioSession.sharedInstance().setActive(true, options: .notifyOthersOnDeactivation)
        } catch {
            print("audioSession properties weren't set because of an error.")
            
        }
        let utterance = AVSpeechUtterance(string: voiceOutdata)
        utterance.voice = AVSpeechSynthesisVoice(language: lautype)
        let synth = AVSpeechSynthesizer()
        synth.speak(utterance)
        defer {
            disableAVSession()
        }
    }
    func disableAVSession()
    {
        do {
            try AVAudioSession.sharedInstance().setActive(false, options: .notifyOthersOnDeactivation)
        } catch{ print("audioSession properties weren't disable.")
        }
    }
}
