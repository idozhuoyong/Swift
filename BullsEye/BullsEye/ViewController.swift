//
//  ViewController.swift
//  BullsEye
//
//  Created by 卓勇 on 2018/4/4.
//  Copyright © 2018年 激情工作室. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var currentSliderValue: Int = 0
    var targetValue: Int = 0
    var score: Int = 0
    var round: Int = 0
    
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.startNewGame()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sliderMoved(_ sender: UISlider) {
        // print("滑动条当前数值是：\(sender.value)")

        // lroundf() 四舍五入为整数
        currentSliderValue = lroundf(sender.value)
        
    }
    
    @IBAction func showAlertView(_ sender: UIButton) {
        
        let difference = abs(currentSliderValue - targetValue)
        var tempScore = 0 // 奖励分

        let title: String
        if (difference == 0) {
            title = "运气逆天，赶紧去买彩票吧"
            tempScore += 100
        } else if (difference <= 5) {
            title = "太棒了，差一点就到了"
            tempScore += 20
        } else if (difference <= 10) {
            title = "不错哦，继续努力吧"
            tempScore += 10
        } else {
            title = "有点远哦，继续加油💪"
        }
        
        let currrentScore: Int = 100 - difference + tempScore // 当前得分
        self.score += currrentScore // 总得分
        
        let message = "滑动条的当前数值是：\(currentSliderValue) \n目标值是：\(targetValue) \n当前得分是：\(currrentScore) \n总得分：\(self.score)"
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        unowned let unownedSelf = self
        let action = UIAlertAction(title: "ok", style: .default, handler: {(action: UIAlertAction) -> Void in
            unownedSelf.startNewRound()
        })
        alert.addAction(action)
        
        present(alert, animated: true, completion: {})
    }
    
    @IBAction func startOver() {
        // 重新开始
        self.startNewGame()
    }
    
    func startNewGame() {
        self.round = 0
        self.score = 0
        self.startNewRound()
    }
    
    func startNewRound() {
        self.round += 1
        self.targetValue = 1 + Int(arc4random_uniform(100)) // 产生一个 1-100 的随机整数
        self.currentSliderValue = 50;
        self.slider.value = Float(currentSliderValue)
        
        self.updateLabels()
    }
    
    func updateLabels() {
        self.targetLabel.text = String(self.targetValue)
        self.scoreLabel.text = String(self.score)
        self.roundLabel.text = String(self.round)
    }
}

