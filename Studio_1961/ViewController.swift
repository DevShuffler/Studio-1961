//
//  ViewController.swift
//  Studio_1961
//
//  Created by Василий on 19.01.2023.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {

    var player: AVAudioPlayer?
    var playing = false
    
    @IBOutlet weak var BackgroundEffect: UIImageView!
    
    
    @IBAction func playButton(_ sender: Any) {
        if (!playing) {
            player?.play()
            playing = !playing
        }
    }
    
    
    @IBAction func pauseButton(_ sender: Any) {
        if (playing) {
            player?.pause()
            playing = !playing
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        UIView.animate(withDuration: 30) {
            self.BackgroundEffect.transform = CGAffineTransform(rotationAngle: .pi)
        }
        
        let url = URL(string: "https://swifteasy.ru/lessons/App003/start.mp3")
        let data = try? Data (contentsOf: url!)
        
        do {
            player = try AVAudioPlayer(data: data!)
        }
        catch{
        }
    }
}

