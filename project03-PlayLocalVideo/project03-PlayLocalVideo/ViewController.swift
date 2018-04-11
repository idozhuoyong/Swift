//
//  ViewController.swift
//  project03-PlayLocalVideo
//
//  Created by 卓勇 on 2018/4/11.
//  Copyright © 2018年 激情工作室. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let cellDatas = [
        VideoDataModel(image: "videoScreenshot01", title: "Introduce 3DS Mario", source: "Youtube - 06:32"),
        VideoDataModel(image: "videoScreenshot02", title: "Emoji Among Us", source: "Vimeo - 3:34"),
        VideoDataModel(image: "videoScreenshot03", title: "Seals Documentary", source: "Vine - 00:06"),
        VideoDataModel(image: "videoScreenshot04", title: "Adventure Time", source: "Youtube - 02:39"),
        VideoDataModel(image: "videoScreenshot05", title: "Facebook HQ", source: "Facebook - 10:20"),
        VideoDataModel(image: "videoScreenshot06", title: "Lijiang Lugu Lake", source: "Allen - 20:30")
    ]
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellDatas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell", for: indexPath) as! VideoCell
        
        let videoDataModel = cellDatas[indexPath.row]
        cell.videoScreeenHotImageView.image = UIImage(named: videoDataModel.image)
        cell.videoTitleLabel.text = videoDataModel.title
        cell.videoSourceLabel.text = videoDataModel.source
        cell.playButton.tag = indexPath.row
        
        return cell
    }
    
    // MARK: - UITableViewDelegate
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        // 去除底部多余分割线
        return UIView(frame: CGRect.zero)
    }
    
    // MARK: - touch method
    @IBAction func playButtonClick(_ sender: UIButton) {
        
        let path = Bundle.main.path(forResource: "emoji zone", ofType: "mp4")
        guard path != nil else {
            print("视频路径无效")
            return
        }
        
        let player = AVPlayer(url: URL(fileURLWithPath: path!))
        
        let playerViewController = AVPlayerViewController()
        playerViewController.player = player
        
        present(playerViewController, animated: true, completion: {
            playerViewController.player?.play()
        })
    }
}

