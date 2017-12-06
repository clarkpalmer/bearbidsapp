//
//  EventTableViewCell.swift
//  BearBids
//
//  Created by Clark Palmer on 12/6/17.
//  Copyright © 2017 Clark Palmer. All rights reserved.
//

import UIKit

class EventTableViewCell: UITableViewCell {

    @IBOutlet var eventDate: UILabel!
    @IBOutlet var eventName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
