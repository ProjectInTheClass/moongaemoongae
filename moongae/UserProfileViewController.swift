//
//  UserProfileViewController.swift
//  moongae
//
//  Created by swuad_13 on 2018. 7. 20..
//  Copyright © 2018년 swuad_14. All rights reserved.
//

import UIKit

class UserProfileViewController: UIViewController {

    var modelUser = UserListModel()
    var modelComment = CommentModel()
    var userName:String!
    var user:UserList = UserList(UserPhoto: "", UserName: "", UserMajor:"", UserGrade: "",UserEmail:"")
    
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelEmail: UILabel!
    @IBOutlet weak var labelSchool: UILabel!
    @IBOutlet weak var labelGrade: UILabel!
    @IBOutlet weak var labelMajor: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 선택한 사용자의 프로필 출력
        labelName.text = user.UserName
        labelEmail.text = user.UserEmail
        labelGrade.text = user.UserGrade + "학년"
        labelMajor.text = user.UserMajor
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
