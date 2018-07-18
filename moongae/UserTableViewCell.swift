//
//  UserTableViewCell.swift
//  moongae
//
//  Created by swuad_06 on 2018. 7. 18..
//  Copyright © 2018년 swuad_14. All rights reserved.
//

import UIKit

class UserTableViewCell: UITableViewCell {

    @IBOutlet weak var UserPhoto: UIImageView!
    @IBOutlet weak var UserName: UILabel!
    @IBOutlet weak var UserMajor: UILabel!
    @IBOutlet weak var UserGrade: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
