//
//  ViewController.swift
//  UngXyloPhone
//
//  Created by MasterUNG on 30/12/2561 BE.
//  Copyright © 2561 MasterUNG. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var audioPlayer: AVAudioPlayer?
    let nodeStrins = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func myButton(_ sender: UIButton) {
        print("Click Button tag ==> \(sender.tag)")
        playNodeSound(index: sender.tag - 1)
    }
    
    func playNodeSound(index: Int) -> Void {
        let soundURL = Bundle.main.url(forResource: nodeStrins[index], withExtension: "wav")
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        } catch let error as NSError {
            print(error)
        }
        audioPlayer!.play()
    }
    
}

