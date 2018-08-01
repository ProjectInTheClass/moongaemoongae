//Model class
import Foundation

class UserList{
    var UserPhoto:String
    var UserName:String
    var UserMajor:String
    var User2Major:String?
    var UserGrade:String
    var UserEmail:String
    
    init(UserPhoto:String, UserName:String, UserMajor:String, User2Major:String?, UserGrade:String, UserEmail:String) {//생성자
        self.UserPhoto = UserPhoto
        self.UserName = UserName
        self.UserMajor = UserMajor
        self.User2Major = User2Major
        self.UserGrade = UserGrade
        self.UserEmail = UserEmail
    }
    
}

class UserListModel {
    //singleton
    static let UserListModelSingleton = UserListModel()
    var arrayList:Array<UserList>
    var selectedIndex:Int = 0
    
    private init() {
        self.arrayList = []
        self.arrayList.append(UserList(UserPhoto:"img_profile_Default3.png", UserName: "박예빈", UserMajor: "정보보호학과", User2Major: "컴퓨터학과", UserGrade: "4", UserEmail: "aaaa@naver.com"))
        
        self.arrayList.append(UserList(UserPhoto:"img_profile_Default.png", UserName:"김소연", UserMajor:"컴퓨터학과", User2Major : nil, UserGrade:"4", UserEmail: "ese2003@naver.com"))
        
        self.arrayList.append(UserList(UserPhoto:"img_profile_Default3.png", UserName:"이재은", UserMajor:"콘텐츠디자인학과" , User2Major: nil , UserGrade:"4", UserEmail: "cccc@naver.com"))
        
        self.arrayList.append(UserList(UserPhoto:"img_profile_Default2.png", UserName: "김유리", UserMajor: "컴퓨터학과", User2Major: "컴퓨터학과", UserGrade: "4", UserEmail: "aaaa@naver.com"))
        
        self.arrayList.append(UserList(UserPhoto:"img_profile_Default.png", UserName: "이채연", UserMajor: "정보보호학과", User2Major: "컴퓨터학과", UserGrade: "4", UserEmail: "aaaa@naver.com"))
        
        self.arrayList.append(UserList(UserPhoto:"img_profile_Default2.png", UserName: "지연주", UserMajor: "정보보호학과", User2Major: "컴퓨터학과", UserGrade: "4", UserEmail: "aaaa@naver.com"))
        
        self.arrayList.append(UserList(UserPhoto:"img_profile_Default3.png", UserName: "박수지", UserMajor: "콘텐츠디자인학과", User2Major: "정보보호학과", UserGrade: "4", UserEmail: "aaaa@naver.com"))
        
        self.arrayList.append(UserList(UserPhoto:"img_profile_Default.png", UserName: "김수은", UserMajor: "컴퓨터학과", User2Major: "콘텐츠디자인학과", UserGrade: "4", UserEmail: "aaaa@naver.com"))
        
        self.arrayList.append(UserList(UserPhoto:"img_profile_Default2.png", UserName: "수기윤", UserMajor: "멀티미디어학과", User2Major: "", UserGrade: "4", UserEmail: "aaaa@naver.com"))
        
        self.arrayList.append(UserList(UserPhoto:"img_profile_Default.png", UserName: "정인채", UserMajor: "컴퓨터학과", User2Major: "정보보호학과", UserGrade: "3", UserEmail: "aaaa@naver.com"))
        
        self.arrayList.append(UserList(UserPhoto:"img_profile_Default3.png", UserName: "김술현", UserMajor: "컴퓨터학과", User2Major: "디지털미디어학과", UserGrade: "4", UserEmail: "aaaa@naver.com"))
        
        self.arrayList.append(UserList(UserPhoto:"img_profile_Default2.png", UserName: "이지린", UserMajor: "컴퓨터학과", User2Major: "정보보호학과", UserGrade: "4", UserEmail: "aaaa@naver.com"))
        
        self.arrayList.append(UserList(UserPhoto:"img_profile_Default.png", UserName: "김지인", UserMajor: "디지털미디어학과", User2Major: "컴퓨터학과", UserGrade: "4", UserEmail: "aaaa@naver.com"))
        
        self.arrayList.append(UserList(UserPhoto:"img_profile_Default3.png", UserName: "유지혜", UserMajor: "디지털미디어학과", User2Major: "", UserGrade: "4", UserEmail: "aaaa@naver.com"))
        
        self.arrayList.append(UserList(UserPhoto:"img_profile_Default.png", UserName: "구연지", UserMajor: "콘텐츠디자인학과", User2Major: "정보보호학과", UserGrade: "3", UserEmail: "aaaa@naver.com"))
        
        self.arrayList.append(UserList(UserPhoto:"img_profile_Default2.png", UserName: "김현수", UserMajor: "컴퓨터학과", User2Major: "기업보안융합", UserGrade: "4", UserEmail: "aaaa@naver.com"))
        
        
        self.arrayList.append(UserList(UserPhoto:"img_profile_Default3.png", UserName: "기향기", UserMajor: "정보보호학과", User2Major: "컴퓨터학과", UserGrade: "4", UserEmail: "aaaa@naver.com"))
        
        self.arrayList.append(UserList(UserPhoto:"img_profile_Default2.png", UserName: "유연수", UserMajor: "정보보호학과", User2Major: "컴퓨터학과", UserGrade: "4", UserEmail: "aaaa@naver.com"))
        
        self.arrayList.append(UserList(UserPhoto:"img_profile_Default.png", UserName: "고지은", UserMajor: "정보보호학과", User2Major: "컴퓨터학과", UserGrade: "4", UserEmail: "aaaa@naver.com"))
        
        self.arrayList.append(UserList(UserPhoto:"img_profile_Default.png", UserName: "성도연", UserMajor: "정보보호학과", User2Major: "컴퓨터학과", UserGrade: "4", UserEmail: "aaaa@naver.com"))
        
        self.arrayList.append(UserList(UserPhoto:"img_profile_Default2.png", UserName: "홍지민", UserMajor: "정보보호학과", User2Major: "컴퓨터학과", UserGrade: "4", UserEmail: "aaaa@naver.com"))
        
        
        self.arrayList.append(UserList(UserPhoto:"img_profile_Default3.png", UserName: "이소라", UserMajor: "정보보호학과", User2Major: "컴퓨터학과", UserGrade: "4", UserEmail: "aaaa@naver.com"))
        
        self.arrayList.append(UserList(UserPhoto:"img_profile_Default2.png", UserName: "장채리", UserMajor: "정보보호학과", User2Major: "컴퓨터학과", UserGrade: "4", UserEmail: "aaaa@naver.com"))
        
        self.arrayList.append(UserList(UserPhoto:"img_profile_Default.png", UserName: "박혜주", UserMajor: "정보보호학과", User2Major: "컴퓨터학과", UserGrade: "3", UserEmail: "aaaa@naver.com"))
        
        self.arrayList.append(UserList(UserPhoto:"img_profile_Default3.png", UserName: "오주은", UserMajor: "정보보호학과", User2Major: "컴퓨터학과", UserGrade: "4", UserEmail: "aaaa@naver.com"))
        
        self.arrayList.append(UserList(UserPhoto:"img_profile_Default2.png", UserName: "이도형", UserMajor: "정보보호학과", User2Major: "컴퓨터학과", UserGrade: "4", UserEmail: "aaaa@naver.com"))
        
        self.arrayList.append(UserList(UserPhoto:"img_profile_Default.png", UserName: "곽소연", UserMajor: "정보보호학과", User2Major: "컴퓨터학과", UserGrade: "4", UserEmail: "aaaa@naver.com"))
        
        self.arrayList.append(UserList(UserPhoto:"img_profile_Default3.png", UserName: "김희정", UserMajor: "정보보호학과", User2Major: "컴퓨터학과", UserGrade: "4", UserEmail: "aaaa@naver.com"))
        
        self.arrayList.append(UserList(UserPhoto:"img_profile_Default2.png", UserName: "정하늘", UserMajor: "정보보호학과", User2Major: "컴퓨터학과", UserGrade: "3", UserEmail: "aaaa@naver.com"))
        
        self.arrayList.append(UserList(UserPhoto:"img_profile_Default.png", UserName: "곽은지", UserMajor: "정보보호학과", User2Major: "컴퓨터학과", UserGrade: "4", UserEmail: "aaaa@naver.com"))
        
        self.arrayList.append(UserList(UserPhoto:"img_profile_Default3.png", UserName: "정효진", UserMajor: "정보보호학과", User2Major: "컴퓨터학과", UserGrade: "4", UserEmail: "aaaa@naver.com"))
        
        self.arrayList.append(UserList(UserPhoto:"img_profile_Default2.png", UserName: "최수연", UserMajor: "정보보호학과", User2Major: "컴퓨터학과", UserGrade: "4", UserEmail: "aaaa@naver.com"))
        
        self.arrayList.append(UserList(UserPhoto:"img_profile_Default.png", UserName: "이수연", UserMajor: "정보보호학과", User2Major: "컴퓨터학과", UserGrade: "4", UserEmail: "aaaa@naver.com"))
        
        
        self.arrayList.append(UserList(UserPhoto:"img_profile_Default2.png", UserName: "김양희", UserMajor: "정보보호학과", User2Major: "컴퓨터학과", UserGrade: "4", UserEmail: "aaaa@naver.com"))
        
        
        self.arrayList.append(UserList(UserPhoto:"img_profile_Default3.png", UserName: "연우진", UserMajor: "정보보호학과", User2Major: "컴퓨터학과", UserGrade: "4", UserEmail: "aaaa@naver.com"))
        
        self.arrayList.append(UserList(UserPhoto:"img_profile_Default2.png", UserName: "지혜민", UserMajor: "정보보호학과", User2Major: "컴퓨터학과", UserGrade: "4", UserEmail: "aaaa@naver.com"))
        
        
        self.arrayList.append(UserList(UserPhoto:"img_profile_Default.png", UserName: "박하민", UserMajor: "정보보호학과", User2Major: "컴퓨터학과", UserGrade: "4", UserEmail: "aaaa@naver.com"))
        
        
        self.arrayList.append(UserList(UserPhoto:"img_profile_Default2.png", UserName: "유빈우", UserMajor: "정보보호학과", User2Major: "컴퓨터학과", UserGrade: "4", UserEmail: "aaaa@naver.com"))
        
        
        
        self.arrayList.append(UserList(UserPhoto:"img_profile_Default3.png", UserName: "해지윤", UserMajor: "정보보호학과", User2Major: "컴퓨터학과", UserGrade: "4", UserEmail: "aaaa@naver.com"))
        
        
        
        self.arrayList.append(UserList(UserPhoto:"img_profile_Default.png", UserName: "이유빈", UserMajor: "정보보호학과", User2Major: "컴퓨터학과", UserGrade: "4", UserEmail: "aaaa@naver.com"))
        
        
        
        self.arrayList.append(UserList(UserPhoto:"img_profile_Default2.png", UserName: "김혜리", UserMajor: "정보보호학과", User2Major: "컴퓨터학과", UserGrade: "4", UserEmail: "aaaa@naver.com"))
        
        
        self.arrayList.append(UserList(UserPhoto:"img_profile_Default.png", UserName: "한주연", UserMajor: "정보보호학과", User2Major: "컴퓨터학과", UserGrade: "4", UserEmail: "aaaa@naver.com"))
    }
    
//회원가입 함수
    func CreateUserAccount(UserPhoto:String, UserName:String, UserMajor:String, User2Major :String? , UserGrade:String, UserEmail:String) -> Void {
        self.arrayList.append(UserList(UserPhoto: UserPhoto, UserName: UserName, UserMajor: UserMajor, User2Major:User2Major , UserGrade: UserGrade, UserEmail: UserEmail))
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
        var result:UserList = UserList(UserPhoto: "", UserName: "", UserMajor:"", User2Major: "" , UserGrade: "",UserEmail:"")
        for i in 0 ... arrayList.count - 1 {
            if(email == arrayList[i].UserName){
                result = arrayList[i]
            }
        }
        return result
    }
  

}
