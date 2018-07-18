//Model class
import Foundation

class UserList{
    var UserPhoto:String
    var UserName:String
    var UserMajor:String
    var UserGrade:String

    
    init(UserPhoto:String, UserName:String, UserMajor:String, UserGrade:String) {//생성자
        self.UserPhoto = UserPhoto
        self.UserName = UserName
        self.UserMajor = UserMajor
        self.UserGrade = UserGrade
    }
}

class UserListModel {
    var arrayList:Array<UserList>
    
    init() {
        self.arrayList = []
        
        self.arrayList.append(UserList(UserPhoto:"img_profile_woman_1.png", UserName: "박예빈", UserMajor: "정보보호학과", UserGrade: "4"))
        
        self.arrayList.append(UserList(UserPhoto:"img_profile_woman_2.png", UserName:"김소연", UserMajor:"컴퓨터학과", UserGrade:"4"))
        
        self.arrayList.append(UserList(UserPhoto:"img_profile_woman_3.png", UserName:"이재은", UserMajor:"콘텐츠디자인학과", UserGrade:"4"))
    }
}