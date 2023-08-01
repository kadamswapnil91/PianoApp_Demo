//
//  ViewController.swift
//  Piano App
//
//  Created by Apple on 01/10/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func soundBtnPressed(_ sender: UIButton) {
        print(sender.currentTitle)
        playSound(soundName: sender.currentTitle!)
    }
    
//    func playSound(soundName: String) {
//        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
//        player = try! AVAudioPlayer(contentsOf: url!)
//        player!.play()
//
//
//    }
    
    func playSound(soundName: String) {
        guard let path = Bundle.main.path(forResource: soundName, ofType:"wav") else {
            return }
        let url = URL(fileURLWithPath: path)

        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    
}

