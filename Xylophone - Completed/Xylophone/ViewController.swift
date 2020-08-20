//
//  ViewController.swift
//  Xylophone
//
//  Created by Muhamed Alkhatib on 20/08/2020.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func playPressed(_ sender: UIButton) {
        print(sender.currentTitle!)
        
        guard let url = Bundle.main.url(forResource: sender.currentTitle!, withExtension: "wav") else { return }

            do {
                try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback)
                try AVAudioSession.sharedInstance().setActive(true)

                let player = try AVAudioPlayer(contentsOf: url)

                player.play()

            } catch let error {
                print(error.localizedDescription)
            }
        
        
        
    }
 
}

