//
//  LoginViewController.swift
//  moongae
//
//  Created by swuad_14 on 2018. 7. 31..
//  Copyright © 2018년 swuad_14. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var loginUserid: UITextField!
    @IBOutlet weak var loginPasswd: UITextField!
    @IBOutlet weak var loginStatus: UILabel!
    
    var modelUser = UserListModel.UserListModelSingleton
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
        self.view.endEditing(true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // 로그인 버튼을 누르면 저장된 사용자정보와 입력정보 비교
    @IBAction func loginBtn(_ sender: Any) {
        if loginUserid.text == "" {
            loginStatus.text = "ID를 입력하세요";
            return;
        }
        if loginPasswd.text == "" {
            loginStatus.text = "비밀번호를 입력하세요";
            return;
        }
        if modelUser.findUser(userEmail: loginUserid.text!) == nil {
            loginStatus.text = "아이디를 정확하게 입력해주세요"
            print(modelUser.findUser(userEmail: loginUserid.text!))
        }
        else {
            let myUserInfo = modelUser.findUser(userEmail: self.loginUserid.text!)
            if myUserInfo?.userPassword != loginPasswd.text {
                loginStatus.text = "비밀번호가 틀렸습니다"
            }
            else {
                //myInfo에 사용자 저장
                loginStatus.text = "일치"
                 myInfo.mylogInfo = myUserInfo!
                print(myUserInfo!.userEmail)
                dismiss(animated: true, completion: nil)
            }
        }
    }
}
        


