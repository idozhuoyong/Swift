//
//  ViewController.swift
//  StopWatch
//
//  Created by 卓勇 on 2018/4/10.
//  Copyright © 2018年 激情工作室. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var pauseButton: UIButton!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var timeLabel: UILabel!
    
    var counter  = 0.0
    var timer = Timer()
    var isPlaye = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resetStatus()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func resetButtonClick(_ sender: UIButton) {
        resetStatus()
    }
    
    @IBAction func playButtonClick(_ sender: UIButton) {
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        playButton.isEnabled = false
        pauseButton.isEnabled = true
    }
    
    @IBAction func pauseButtonClick(_ sender: UIButton) {
        if (timer.isValid) {
            timer.invalidate()
        }
        playButton.isEnabled = true
        pauseButton.isEnabled = false
    }
    
    func resetStatus() {
        if (timer.isValid) {
            timer.invalidate()
        }
        counter = 0.0
        timeLabel.text = String(format: "%.0f", counter)
        playButton.isEnabled = true
        pauseButton.isEnabled = false
    }
    
    @objc func updateTimer() {
        counter += 0.1
        timeLabel.text = String(format: "%.1f", counter)
    }
}

