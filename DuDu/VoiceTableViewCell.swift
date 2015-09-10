//
//  VoiceTableViewCell.swift
//  DuDu
//
//  Created by Kyle on 15/9/3.
//  Copyright © 2015年 kyle. All rights reserved.
//

import UIKit

class VoiceTableViewCell: UITableViewCell {

    @IBOutlet weak var voiceTitle: UILabel!
    @IBOutlet weak var voiceImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
