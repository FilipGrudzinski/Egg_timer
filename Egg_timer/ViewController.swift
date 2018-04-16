//
//  ViewController.swift
//  Egg_timer
//
//  Created by Filip on 16.04.2018.
//  Copyright © 2018 Filip. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = Timer()
    
    var seconds: Int = 210

    
    @IBAction func pauseButton(_ sender: Any) {
        
        timer.invalidate()
    }
    
    @IBAction func startButton(_ sender: Any) {
        
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.pressedTimer), userInfo: nil, repeats: true)

    }
    
    
    @IBOutlet weak var timerLabel: UILabel!
    
    @objc func pressedTimer() {
        
        timerLabel.text =  String(seconds) + (" seconds")
        seconds -= 1
        if seconds == 0 {
            
            timer.invalidate()
            
            timerLabel.text =  ("0")
        }
        
    }
    
    @IBAction func addTimerButton(_ sender: Any) {
        
        seconds += 10
        timerLabel.text =  String(seconds) + (" seconds")
        
    }
    
    
    @IBAction func resetButton(_ sender: Any) {
        
        
        seconds = 210
        timerLabel.text =  String(seconds) + (" seconds")
    }
    
    
    @IBAction func lessTimeButton(_ sender: Any) {
        
        if seconds > 10 {
                seconds -= 10
                timerLabel.text =  String(seconds) + (" seconds")
        }
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

