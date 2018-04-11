//
//  VideoCell.swift
//  project03-PlayLocalVideo
//
//  Created by 卓勇 on 2018/4/11.
//  Copyright © 2018年 激情工作室. All rights reserved.
//

import UIKit

struct VideoDataModel {
    let image: String
    let title: String
    let source: String
}

class VideoCell: UITableViewCell {

    @IBOutlet weak var videoScreeenHotImageView: UIImageView!
    @IBOutlet weak var videoTitleLabel: UILabel!
    @IBOutlet weak var videoSourceLabel: UILabel!
    @IBOutlet weak var playButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
