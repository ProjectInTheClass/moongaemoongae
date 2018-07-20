//
//  CommentTableViewController.swift
//  moongae
//
//  Created by swuad_14 on 2018. 7. 18..
//  Copyright © 2018년 swuad_14. All rights reserved.
//

import UIKit

class CommentTableViewController: UITableViewController {

    var modelComment = CommentModel()
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.modelComment.arrayList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let info = self.modelComment.arrayList[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! CommentTableViewCell
        
      //  let imgtitle = info.userImage
      //  cell.userImage?.image = UIImage(named: imgtitle)
        
//        cell.userImage?.image = UIImage(named: info.userImage)
//        cell.userName?.text = info.userName
        cell.contents?.text = info.contents
        cell.writeDate?.text = info.writeDate
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 84.0;
    }
}
