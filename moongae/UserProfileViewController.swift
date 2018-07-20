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
    
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelEmail: UILabel!
    @IBOutlet weak var labelSchool: UILabel!
    @IBOutlet weak var labelGrade: UILabel!
    @IBOutlet weak var labelMajor: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(userName)
        print(modelUser.arrayList[0].UserName)
        
//        for i in 0 ... 3 {
//            if (modelUser.arrayList[i].UserName == userName) {
//                labelName.text = modelUser.arrayList[i].UserName
//                labelEmail.text = modelUser.arrayList[i].UserEmail
//                labelGrade.text = modelUser.arrayList[i].UserGrade
//                labelMajor.text = modelUser.arrayList[i].UserMajor
//            }
//        }
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func bottomPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    

}
