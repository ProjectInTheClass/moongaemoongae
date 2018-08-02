//
//  CommentViewController.swift
//  moongae
//
//  Created by swuad_13 on 2018. 7. 19..
//  Copyright © 2018년 swuad_14. All rights reserved.
//

import UIKit

class CommentViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var modelComment = CommentModel.CommentModelSingleton

    var modelProject : ProjectInfo?
    var modelUser = UserListModel.UserListModelSingleton
    var comment:Array<CommentInfo>!
    // var myInfo = MyInfo()
    
    @IBOutlet var tableView: UITableView!
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelSummary: UILabel!
    @IBOutlet weak var TextCommentAdd: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let detailProject = modelProject!
        labelTitle.text = detailProject.title
        labelSummary.text = detailProject.summary
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
        self.view.endEditing(true)
    }
    
    @IBAction func bottomPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return self.comment.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        

        let info = self.comment[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! CommentTableViewCell

        // 프로필 화면으로 이동하기 위해 userName, userImage를 Button으로 바꿈.
        cell.userName.setTitle(info.userName, for: .normal)
        cell.userImage.setImage(UIImage(named: info.userImage), for: .normal)
        cell.contents?.text = info.contents
        cell.writeDate?.text = info.writeDate
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 84.0;
    }
    
    // 댓글 등록 버튼 클릭
    @IBAction func CommetAddPressed(_ sender: Any) {
        var commentContent: String = ""
        commentContent = TextCommentAdd.text!
        
//        myInfo.mylogInfo?.userName = "김소연"
//        myInfo.mylogInfo?.userEmail = "ese2003@naver.com"
        
//        modelComment.addComment(
//            title: labelTitle.text ?? "",
//            userImage: " ",
//            userName: myInfo.mylogInfo?.userName ?? "",
//            contents: commentContent,
//            writeDate: "08-02")
        
        modelComment.addComment(
            title: labelTitle.text ?? "",
            userImage: "img_profile_Default",
            userName: "이재은",
            contents: commentContent,
            writeDate: "08-02")
        self.comment = self.modelComment.searchForTitle(title: labelTitle.text!)
        tableView.reloadData()
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // 사용자 이름 클릭 시 프로필 화면으로 이동
        if segue.identifier == "toUserProfile" {
            if let destination = segue.destination as? UserProfileViewController {
                
                let btn = sender as! UIButton
                
                // 선택한 유저의 이름으로 유저 리스트에서 검색함.
                let user:UserList = modelUser.searchForName(email:(btn.titleLabel?.text)!)
                destination.user = user
            }
        }
    }
    
    
}
