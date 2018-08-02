//Model class
import Foundation
import UIKit

var myInfo = MyInfo()

struct MyInfo {

    var mylogInfo: UserList?
    
    func checkAndShowLogin() {
        if mylogInfo == nil {
            // let sb = UIStoryboard(name: "Main", bundle: nil) // 리소스의 묶음
            
            // main.storyboard
            let w = UIApplication.shared.delegate?.window as! UIWindow
            w.rootViewController?.performSegue(withIdentifier: "toLogin", sender: nil) // tabbarcontroller
        }
    }
    
    mutating func logout() {
        self.mylogInfo = nil
    }
}

class UserList {
    
    var userPhoto: String
    var userName: String
    var userMajor: String
    var userSubmajor: String?
    var userGrade: String
    var userEmail: String
    var userPassword: String?
    var isCoworker: Bool
    
    init(userPhoto: String, userName: String, userMajor: String,
         userSubmajor: String?, userGrade: String, userEmail: String, userPassword: String, isCoworker: Bool) { //생성자
        self.userPhoto = userPhoto
        self.userName = userName
        self.userMajor = userMajor
        self.userSubmajor = userSubmajor
        self.userGrade = userGrade
        self.userEmail = userEmail
        self.userPassword = userPassword
        self.isCoworker = isCoworker
    }
    
}

class UserListModel {
    //singleton
    static let UserListModelSingleton = UserListModel()
    var arrayList: Array<UserList>
    var selectedIndex:Int = 0
    
    private init() {
        self.arrayList = []
        self.arrayList.append(UserList(userPhoto: "img_profile_Default3.png", userName: "박예빈", userMajor: "정보보호학과", userSubmajor: "컴퓨터학과", userGrade: "4", userEmail: "aaaa@naver.com", userPassword: "1234", isCoworker: false))
        
        self.arrayList.append(UserList(userPhoto: "img_profile_Default.png", userName:"김소연", userMajor:"컴퓨터학과", userSubmajor : nil, userGrade:"4", userEmail: "ese2003@naver.com", userPassword: "1234", isCoworker: false))
        
        self.arrayList.append(UserList(userPhoto: "img_profile_Default3.png", userName:"이재은", userMajor:"콘텐츠디자인학과" , userSubmajor: nil , userGrade:"4", userEmail: "cccc@naver.com", userPassword: "1234", isCoworker: false))
        
        self.arrayList.append(UserList(userPhoto: "img_profile_Default2.png", userName: "김유리", userMajor: "컴퓨터학과", userSubmajor: "컴퓨터학과", userGrade: "4", userEmail: "aaaa@naver.com", userPassword: "1234", isCoworker: false))
        
        self.arrayList.append(UserList(userPhoto: "img_profile_Default.png", userName: "이채연", userMajor: "정보보호학과", userSubmajor: "컴퓨터학과", userGrade: "4", userEmail: "aaaa@naver.com", userPassword: "1234", isCoworker: false))
        
        self.arrayList.append(UserList(userPhoto: "img_profile_Default2.png", userName: "지연주", userMajor: "정보보호학과", userSubmajor: "컴퓨터학과", userGrade: "4", userEmail: "aaaa@naver.com", userPassword: "1234", isCoworker: false))
        
        self.arrayList.append(UserList(userPhoto: "img_profile_Default3.png", userName: "박수지", userMajor: "콘텐츠디자인학과", userSubmajor: "정보보호학과", userGrade: "4", userEmail: "aaaa@naver.com", userPassword: "1234", isCoworker: false))
        
        self.arrayList.append(UserList(userPhoto: "img_profile_Default.png", userName: "김수은", userMajor: "컴퓨터학과", userSubmajor: "콘텐츠디자인학과", userGrade: "4", userEmail: "aaaa@naver.com", userPassword: "1234", isCoworker: false))
        
        self.arrayList.append(UserList(userPhoto: "img_profile_Default2.png", userName: "수기윤", userMajor: "멀티미디어학과", userSubmajor: "", userGrade: "4", userEmail: "aaaa@naver.com", userPassword: "1234", isCoworker: false))
        
        self.arrayList.append(UserList(userPhoto: "img_profile_Default.png", userName: "정인채", userMajor: "컴퓨터학과", userSubmajor: "정보보호학과", userGrade: "3", userEmail: "aaaa@naver.com", userPassword: "1234", isCoworker: false))
        
        self.arrayList.append(UserList(userPhoto: "img_profile_Default3.png", userName: "김술현", userMajor: "컴퓨터학과", userSubmajor: "디지털미디어학과", userGrade: "4", userEmail: "aaaa@naver.com", userPassword: "1234", isCoworker: false))
        
        self.arrayList.append(UserList(userPhoto: "img_profile_Default2.png", userName: "이지린", userMajor: "컴퓨터학과", userSubmajor: "정보보호학과", userGrade: "4", userEmail: "aaaa@naver.com", userPassword: "1234", isCoworker: false))
        
        self.arrayList.append(UserList(userPhoto: "img_profile_Default.png", userName: "김지인", userMajor: "디지털미디어학과", userSubmajor: "컴퓨터학과", userGrade: "4", userEmail: "aaaa@naver.com", userPassword: "1234", isCoworker: false))
        
        self.arrayList.append(UserList(userPhoto: "img_profile_Default3.png", userName: "유지혜", userMajor: "디지털미디어학과", userSubmajor: "", userGrade: "4", userEmail: "aaaa@naver.com", userPassword: "1234", isCoworker: false))
        
        self.arrayList.append(UserList(userPhoto: "img_profile_Default.png", userName: "구연지", userMajor: "콘텐츠디자인학과", userSubmajor: "정보보호학과", userGrade: "3", userEmail: "aaaa@naver.com", userPassword: "1234", isCoworker: false))
        
        self.arrayList.append(UserList(userPhoto: "img_profile_Default2.png", userName: "김현수", userMajor: "컴퓨터학과", userSubmajor: "기업보안융합", userGrade: "4", userEmail: "aaaa@naver.com", userPassword: "1234", isCoworker: false))
        
        
        self.arrayList.append(UserList(userPhoto: "img_profile_Default3.png", userName: "기향기", userMajor: "정보보호학과", userSubmajor: "컴퓨터학과", userGrade: "4", userEmail: "aaaa@naver.com", userPassword: "1234", isCoworker: false))
        
        self.arrayList.append(UserList(userPhoto: "img_profile_Default2.png", userName: "유연수", userMajor: "정보보호학과", userSubmajor: "컴퓨터학과", userGrade: "4", userEmail: "aaaa@naver.com", userPassword: "1234", isCoworker: false))
        
        self.arrayList.append(UserList(userPhoto: "img_profile_Default.png", userName: "고지은", userMajor: "정보보호학과", userSubmajor: "컴퓨터학과", userGrade: "4", userEmail: "aaaa@naver.com", userPassword: "1234", isCoworker: false))
        
        self.arrayList.append(UserList(userPhoto: "img_profile_Default.png", userName: "성도연", userMajor: "정보보호학과", userSubmajor: "컴퓨터학과", userGrade: "4", userEmail: "aaaa@naver.com", userPassword: "1234", isCoworker: false))
        
        self.arrayList.append(UserList(userPhoto: "img_profile_Default2.png", userName: "홍지민", userMajor: "정보보호학과", userSubmajor: "컴퓨터학과", userGrade: "4", userEmail: "aaaa@naver.com", userPassword: "1234", isCoworker: false))
        
        
        self.arrayList.append(UserList(userPhoto: "img_profile_Default3.png", userName: "이소라", userMajor: "정보보호학과", userSubmajor: "컴퓨터학과", userGrade: "4", userEmail: "aaaa@naver.com", userPassword: "1234", isCoworker: false))
        
        self.arrayList.append(UserList(userPhoto: "img_profile_Default2.png", userName: "장채리", userMajor: "정보보호학과", userSubmajor: "컴퓨터학과", userGrade: "4", userEmail: "aaaa@naver.com", userPassword: "1234", isCoworker: false))
        
        self.arrayList.append(UserList(userPhoto: "img_profile_Default.png", userName: "박혜주", userMajor: "정보보호학과", userSubmajor: "컴퓨터학과", userGrade: "3", userEmail: "aaaa@naver.com", userPassword: "1234", isCoworker: false))
        
        self.arrayList.append(UserList(userPhoto: "img_profile_Default3.png", userName: "오주은", userMajor: "정보보호학과", userSubmajor: "컴퓨터학과", userGrade: "4", userEmail: "aaaa@naver.com", userPassword: "1234", isCoworker: false))
        
        self.arrayList.append(UserList(userPhoto: "img_profile_Default2.png", userName: "이도형", userMajor: "정보보호학과", userSubmajor: "컴퓨터학과", userGrade: "4", userEmail: "aaaa@naver.com", userPassword: "1234", isCoworker: false))
        
        self.arrayList.append(UserList(userPhoto: "img_profile_Default.png", userName: "곽소연", userMajor: "정보보호학과", userSubmajor: "컴퓨터학과", userGrade: "4", userEmail: "aaaa@naver.com", userPassword: "1234", isCoworker: false))
        
        self.arrayList.append(UserList(userPhoto: "img_profile_Default3.png", userName: "김희정", userMajor: "정보보호학과", userSubmajor: "컴퓨터학과", userGrade: "4", userEmail: "aaaa@naver.com", userPassword: "1234", isCoworker: false))
        
        self.arrayList.append(UserList(userPhoto: "img_profile_Default2.png", userName: "정하늘", userMajor: "정보보호학과", userSubmajor: "컴퓨터학과", userGrade: "3", userEmail: "aaaa@naver.com", userPassword: "1234", isCoworker: false))
        
        self.arrayList.append(UserList(userPhoto: "img_profile_Default.png", userName: "곽은지", userMajor: "정보보호학과", userSubmajor: "컴퓨터학과", userGrade: "4", userEmail: "aaaa@naver.com", userPassword: "1234", isCoworker: false))
        
        self.arrayList.append(UserList(userPhoto: "img_profile_Default3.png", userName: "정효진", userMajor: "정보보호학과", userSubmajor: "컴퓨터학과", userGrade: "4", userEmail: "aaaa@naver.com", userPassword: "1234", isCoworker: false))
        
        self.arrayList.append(UserList(userPhoto: "img_profile_Default2.png", userName: "최수연", userMajor: "정보보호학과", userSubmajor: "컴퓨터학과", userGrade: "4", userEmail: "aaaa@naver.com", userPassword: "1234", isCoworker: false))
        
        self.arrayList.append(UserList(userPhoto: "img_profile_Default.png", userName: "이수연", userMajor: "정보보호학과", userSubmajor: "컴퓨터학과", userGrade: "4", userEmail: "aaaa@naver.com", userPassword: "1234", isCoworker: false))
        
        
        self.arrayList.append(UserList(userPhoto: "img_profile_Default2.png", userName: "김양희", userMajor: "정보보호학과", userSubmajor: "컴퓨터학과", userGrade: "4", userEmail: "aaaa@naver.com", userPassword: "1234", isCoworker: false))
        
        
        self.arrayList.append(UserList(userPhoto: "img_profile_Default3.png", userName: "연우진", userMajor: "정보보호학과", userSubmajor: "컴퓨터학과", userGrade: "4", userEmail: "aaaa@naver.com", userPassword: "1234", isCoworker: false))
        
        self.arrayList.append(UserList(userPhoto: "img_profile_Default2.png", userName: "지혜민", userMajor: "정보보호학과", userSubmajor: "컴퓨터학과", userGrade: "4", userEmail: "aaaa@naver.com", userPassword: "1234", isCoworker: false))
        
        
        self.arrayList.append(UserList(userPhoto: "img_profile_Default.png", userName: "박하민", userMajor: "정보보호학과", userSubmajor: "컴퓨터학과", userGrade: "4", userEmail: "aaaa@naver.com", userPassword: "1234", isCoworker: false))
        
        
        self.arrayList.append(UserList(userPhoto: "img_profile_Default2.png", userName: "유빈우", userMajor: "정보보호학과", userSubmajor: "컴퓨터학과", userGrade: "4", userEmail: "aaaa@naver.com", userPassword: "1234", isCoworker: false))
        
        
        
        self.arrayList.append(UserList(userPhoto: "img_profile_Default3.png", userName: "해지윤", userMajor: "정보보호학과", userSubmajor: "컴퓨터학과", userGrade: "4", userEmail: "aaaa@naver.com", userPassword: "1234", isCoworker: false))
        
        
        
        self.arrayList.append(UserList(userPhoto: "img_profile_Default.png", userName: "이유빈", userMajor: "정보보호학과", userSubmajor: "컴퓨터학과", userGrade: "4", userEmail: "aaaa@naver.com", userPassword: "1234", isCoworker: false))
        
        
        
        self.arrayList.append(UserList(userPhoto: "img_profile_Default2.png", userName: "김혜리", userMajor: "정보보호학과", userSubmajor: "컴퓨터학과", userGrade: "4", userEmail: "aaaa@naver.com", userPassword: "1234", isCoworker: false))
        
        
        self.arrayList.append(UserList(userPhoto: "img_profile_Default.png", userName: "한주연", userMajor: "정보보호학과", userSubmajor: "컴퓨터학과", userGrade: "4", userEmail: "aaaa@naver.com", userPassword: "1234", isCoworker: false))
        
        self.arrayList.append(UserList(userPhoto: "img_profile_Default3.png", userName: "박수현", userMajor: "정보보호학과", userSubmajor: "컴퓨터학과", userGrade: "4", userEmail: "11", userPassword: "11", isCoworker: false))
    }
    
    // 이메일로 회원 정보 찾기
    func findUser(userEmail: String) -> UserList? {
        for user in arrayList {
            if user.userEmail == userEmail {
                return user
            }
        }
        return nil
    }
    
    
// 회원가입 함수
    func CreateUserAccount(userPhoto: String, userName: String, userMajor: String, userSubmajor: String? , userGrade: String, userEmail: String, userPassword: String, isCoworker: Bool) -> Void {
        self.arrayList.append(UserList(userPhoto: userPhoto, userName: userName, userMajor: userMajor, userSubmajor: userSubmajor , userGrade: userGrade, userEmail: userEmail, userPassword: userPassword, isCoworker: isCoworker))
        print(userName)
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
    func searchForName(email: String) -> UserList {
        var result: UserList = UserList(userPhoto: "", userName: "", userMajor: "", userSubmajor: "" , userGrade: "", userEmail: "", userPassword: "", isCoworker: false)
        for i in 0 ... arrayList.count - 1 {
            if(email == arrayList[i].userName){
                result = arrayList[i]
            }
        }
        return result
    }
  

}


