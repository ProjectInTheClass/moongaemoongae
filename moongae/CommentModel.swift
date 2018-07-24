//
//  CommentModel.swift
//  moongae
//
//  Created by swuad_14 on 2018. 7. 18..
//  Copyright © 2018년 swuad_14. All rights reserved.
//


// 예빈
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
    var selectedIndex:Int = 0
    
    init() {
        self.arrayList = []
        
        self.arrayList.append(CommentInfo(title: "공간캡슐", userImage: "img_profile_woman_1.png", userName: "김소연", contents: "우와 개발 어떻게 하신 거에요?", writeDate: "06-22"))
        self.arrayList.append(CommentInfo(title: "무덤덤", userImage: "img_profile_woman_2.png", userName: "박예빈", contents: "혹시 서버 사용하셨나요? 쪽지 드려도 될까요?", writeDate: "07-13"))
        self.arrayList.append(CommentInfo(title: "공간캡슐", userImage: "img_profile_woman_3.png", userName: "이재은", contents: "디자인이 너무 예쁘네요", writeDate: "07-17"))
    }
    
    // title에 대한 댓글 검색.
    func searchForTitle(title:String) -> Array<CommentInfo> {
        var resultList:Array<CommentInfo> = []
        for i in 0 ... arrayList.count - 1 {
            if(title == arrayList[i].title){
                resultList.append(arrayList[i])
            }
        }
        return resultList
    }
    
//    func searchForTitle(title:String) -> CommentModel {
//        var resultList:Array<CommentInfo> = []
//        for i in 0 ... arrayList.count {
//            if(title == arrayList[i].title){
//                resultList.append(arrayList[i])
//            }
//        }
//        return resultList
//    }
    
}



