//
//  ViewController.swift
//  CarCrashComedy
//
//  Created by Development on 7/5/17.
//  Copyright © 2017 Development. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var play_audio: UIButton!
    var bombSoundEffect: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        play_audio.center = self.view.center
        play_audio.setImage(UIImage(named: "bomb.png"), for: .normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func play_sound(_ sender: Any) {
        let path = Bundle.main.path(forResource: "car_crash", ofType:"wav")!
        let url = URL(fileURLWithPath: path)
        
        do {
            let sound = try AVAudioPlayer(contentsOf: url)
            bombSoundEffect = sound
            sound.play()
        } catch {
            // couldn't load file :(
        }
    }

}

