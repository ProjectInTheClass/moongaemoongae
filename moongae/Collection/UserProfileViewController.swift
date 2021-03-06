//
//  UserProfileViewController.swift
//  moongae
//
//  Created by swuad_13 on 2018. 7. 20..
//  Copyright © 2018년 swuad_14. All rights reserved.
//

import UIKit

class UserProfileViewController: UIViewController {

    var modelUser = UserListModel.UserListModelSingleton
    //    var modelComment = CommentModel()
    var modelComment = CommentModel.CommentModelSingleton
    var userName: String!
    var user: UserList = UserList(userPhoto: "", userName: "", userMajor:"", userSubmajor: nil, userGrade: "", userEmail: "", userPassword: "", isCoworker: false)
    
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelEmail: UILabel!
    @IBOutlet weak var labelSchool: UILabel!
    @IBOutlet weak var labelGrade: UILabel!
    @IBOutlet weak var labelMajor: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 선택한 사용자의 프로필 출력
        labelName.text = user.userName
        labelEmail.text = user.userEmail
        labelGrade.text = user.userGrade + "학년"
        labelMajor.text = user.userMajor
        // --> 사진 설정하는 코드도 추가해야함.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func bottomPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    

}
