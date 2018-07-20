//
//  CommentViewController.swift
//  moongae
//
//  Created by swuad_13 on 2018. 7. 19..
//  Copyright © 2018년 swuad_14. All rights reserved.
//

import UIKit

class CommentViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var modelComment = CommentModel()
    var modelProject = ProjectModel()
    var modelUser = UserListModel()
    
    @IBOutlet var tableView: UITableView!
    
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelSummary: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let detailProject = modelProject.arrayList[modelProject.selectedIndex]
        
        labelTitle.text = detailProject.title
        labelSummary.text = detailProject.summary
    }
    
    @IBAction func bottomPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.modelComment.arrayList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let info = self.modelComment.arrayList[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! CommentTableViewCell

        // 프로필 화면으로 이동하기 위해 userName, userImage를 Button으로 바꿈.
        cell.userName.setTitle(info.userName, for: .normal)
        cell.userImage.setImage(UIImage(named: info.userImage), for: .normal)
//        cell.userImage?.image = UIImage(named: info.userImage)
//        cell.userName?.text = info.userName
        cell.contents?.text = info.contents
        cell.writeDate?.text = info.writeDate
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 84.0;
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // 사용자 사진, 이름 클릭 시 프로필 화면으로 이동
        if segue.identifier == "toUserProfile" {
            if let destination = segue.destination as? UserProfileViewController {
                let btn = sender as! UIButton
                let cell = btn.superview?.superview as! UITableViewCell
                
//                self.modelUser.selectedIndex = tableView.indexPath(for: cell)!.row
                destination.userName = btn.titleLabel?.text
                destination.modelUser = self.modelUser
                destination.modelComment = self.modelComment
            
            }
        }
    }
    
    
}
