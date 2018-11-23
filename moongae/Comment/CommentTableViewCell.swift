//
//  CommentTableViewCell.swift
//  moongae
//
//  Created by swuad_14 on 2018. 7. 18..
//  Copyright © 2018년 swuad_14. All rights reserved.
//

import UIKit

class CommentTableViewCell: UITableViewCell {
    
    
    
    @IBOutlet weak var userImage: UIButton!
    @IBOutlet weak var userName: UIButton!
    @IBOutlet weak var contents: UILabel!
    @IBOutlet weak var writeDate: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
