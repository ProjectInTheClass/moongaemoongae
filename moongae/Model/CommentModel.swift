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

// Singleton 패턴 이용
class CommentModel {
    // static으로 선언
    static let CommentModelSingleton = CommentModel()
    var arrayList:Array<CommentInfo>
    var selectedIndex:Int = 0
    
    // private로 선언
    private init() {
        self.arrayList = []
        
        self.arrayList.append(CommentInfo(title: "아두이노를 이용한 탭댄스 신발 - tap tap", userImage: "img_profile_woman_1.png", userName: "김소연", contents: "우와 개발 어떻게 하신 거에요?", writeDate: "06-22"))
        self.arrayList.append(CommentInfo(title: "클라우드 데이터 관리 시스템", userImage: "img_profile_woman_2.png", userName: "박예빈", contents: "혹시 서버 사용하셨나요? 쪽지 드려도 될까요?", writeDate: "07-13"))
        self.arrayList.append(CommentInfo(title: "클라우드 데이터 관리 시스템", userImage: "img_profile_woman_2.png", userName: "김문희", contents: "오 되게 멋지네요!", writeDate: "07-13"))
        self.arrayList.append(CommentInfo(title: "데스크 탑 잠금해제 어플리케이션", userImage: "img_profile_woman_2.png", userName: "김소연", contents: "우와 진짜 신기해요!!", writeDate: "07-13"))
        self.arrayList.append(CommentInfo(title: "클라우드 데이터 관리 시스템", userImage: "img_profile_woman_2.png", userName: "박예빈", contents: "혹시 서버 사용하셨나요? 쪽지 드려도 될까요?", writeDate: "07-13"))
        self.arrayList.append(CommentInfo(title: "클라우드 데이터 관리 시스템", userImage: "img_profile_woman_2.png", userName: "박예빈", contents: "혹시 서버 사용하셨나요? 쪽지 드려도 될까요?", writeDate: "07-13"))
        self.arrayList.append(CommentInfo(title: "클라우드 데이터 관리 시스템", userImage: "img_profile_woman_2.png", userName: "박예빈", contents: "혹시 서버 사용하셨나요? 쪽지 드려도 될까요?", writeDate: "07-13"))
        self.arrayList.append(CommentInfo(title: "클라우드 데이터 관리 시스템", userImage: "img_profile_woman_2.png", userName: "박예빈", contents: "혹시 서버 사용하셨나요? 쪽지 드려도 될까요?", writeDate: "07-13"))
        self.arrayList.append(CommentInfo(title: "아두이노를 이용한 탭댄스 신발 - tap tap", userImage: "img_profile_woman_3.png", userName: "박예빈", contents: "디자인이 너무 예쁘네요", writeDate: "07-17"))
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
    
    // 댓글 수
    func searchCommentCountForTitle(title:String) -> Int {
        var resultList:Array<CommentInfo> = []
        var count:Int = 0
        for i in 0 ..< arrayList.count {
            if(title == arrayList[i].title){
                resultList.append(arrayList[i])
                count = count + 1
            }
        }
        return count
    }
    
    // 댓글 등록
    func addComment(title:String, userImage: String, userName: String, contents: String, writeDate: String) -> Void {
        self.arrayList.append(CommentInfo(title: title, userImage: userImage, userName: userName, contents: contents, writeDate: writeDate))
    }
    
}



