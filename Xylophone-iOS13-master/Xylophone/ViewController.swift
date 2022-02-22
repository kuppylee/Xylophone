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
  
  var audioPlayer : AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

  @IBAction func keyPressed(_ sender: UIButton) {
    let sound : String = sender.currentTitle ?? ""
    playSound(note: sound)

  }
  
  func playSound(note: String) {
    
    guard let url = Bundle.main.url(forResource: note, withExtension: "wav") else{return}
      
//      do {
//        try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback, mode: .default)
//          try AVAudioSession.sharedInstance().setActive(true)
          
          audioPlayer = try! AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)

          guard let audioPlayer = audioPlayer else { return }
          
          audioPlayer.play()
//
//      } catch let error {
//          print(error.localizedDescription)
//      }
  }

}

