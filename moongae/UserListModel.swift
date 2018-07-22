//Model class
import Foundation

class UserList{
    var UserPhoto:String
    var UserName:String
    var UserMajor:String
    var UserGrade:String
    var UserEmail:String
    
    init(UserPhoto:String, UserName:String, UserMajor:String, UserGrade:String, UserEmail:String) {//생성자
        self.UserPhoto = UserPhoto
        self.UserName = UserName
        self.UserMajor = UserMajor
        self.UserGrade = UserGrade
        self.UserEmail = UserEmail
    }
}

class UserListModel {
    var arrayList:Array<UserList>
    var selectedIndex:Int = 0
    
    init() {
        self.arrayList = []
        self.arrayList.append(UserList(UserPhoto:"img_profile_woman_1.png", UserName: "박예빈", UserMajor: "정보보호학과", UserGrade: "4", UserEmail: "aaaa@naver.com"))
        
        self.arrayList.append(UserList(UserPhoto:"img_profile_woman_2.png", UserName:"김소연", UserMajor:"컴퓨터학과", UserGrade:"4", UserEmail: "ese2003@naver.com"))
        
        self.arrayList.append(UserList(UserPhoto:"img_profile_woman_3.png", UserName:"이재은", UserMajor:"콘텐츠디자인학과", UserGrade:"4", UserEmail: "cccc@naver.com"))
    }
    

    // email로 user 검색
//    func searchForEmail(email:String) -> UserList {
//        var result:UserList = UserList(UserPhoto: "", UserName: "", UserMajor:"", UserGrade: "",UserEmail:"")
//        for i in 0 ... arrayList.count - 1 {
//            if(email == arrayList[i].UserEmail){
//                result = arrayList[i]
//            }
//        }
//        return result
//    }
    
    // UserName로 user 검색
    // 현재 댓글 등록한 사용자의 email을 알아낼 수 없어서(방법을 몰라서) 이름으로 검색되도록 함.
    func searchForName(email:String) -> UserList {
        var result:UserList = UserList(UserPhoto: "", UserName: "", UserMajor:"", UserGrade: "",UserEmail:"")
        for i in 0 ... arrayList.count - 1 {
            if(email == arrayList[i].UserName){
                result = arrayList[i]
            }
        }
        return result
    }
}
