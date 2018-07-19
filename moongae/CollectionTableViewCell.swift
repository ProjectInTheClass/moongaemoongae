//
//  CollectionTableViewCell.swift
//  moongae
//
//  Created by swuad_13 on 2018. 7. 18..
//  Copyright © 2018년 swuad_14. All rights reserved.
//

import UIKit

class CollectionTableViewCell: UITableViewCell {


    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var summary: UILabel!
    @IBOutlet weak var createdDate: UILabel!
    @IBOutlet weak var tags: UILabel!
    @IBOutlet weak var project_image: UIImageView!
    @IBOutlet weak var startDate: UILabel!
    @IBOutlet weak var endDate: UILabel!
    @IBOutlet weak var major: UILabel!
    @IBOutlet weak var author: UILabel!
    @IBOutlet weak var likeCount: UILabel!
    @IBOutlet weak var commentCount: UILabel!
    @IBOutlet weak var btnComment: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
