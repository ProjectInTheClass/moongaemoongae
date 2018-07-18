//
//  CommentModel.swift
//  moongae
//
//  Created by swuad_14 on 2018. 7. 18..
//  Copyright © 2018년 swuad_14. All rights reserved.
//

import Foundation

class CommentInfo {
    let title:String
    let userImage:String
    let userName:String
    let contents:String
    let writeDate:String
    
    init(title:String, userImage:String, userName:String, contents:String, writeDate:String) {
        self.title = title
        self.userImage = userImage
        self.userName = userName
        self.contents = contents
        self.writeDate = writeDate
    }
}

class CommentModel {
    var arrayList:Array<CommentInfo>
  //  let formatter = DateFormatter()
    
    init() {
        self.arrayList = []
        
        self.arrayList.append(CommentInfo(title: "작품1", userImage: "img_profile_woman_1.png", userName: "김소연", contents: "우와 개발 어떻게 하신 거에요?", writeDate: "06-22"))
        self.arrayList.append(CommentInfo(title: "작품2", userImage: "img_profile_woman_2.png", userName: "박예빈", contents: "혹시 서버 사용하셨나요? 쪽지 드려도 될까요?", writeDate: "07-13"))
        self.arrayList.append(CommentInfo(title: "작품3", userImage: "img_profile_woman_3.png", userName: "이재은", contents: "디자인이 너무 예쁘네요", writeDate: "07-17"))
    }
}
