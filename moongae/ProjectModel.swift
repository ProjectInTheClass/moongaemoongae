//
//  ProjectModel.swift
//  moongae
//
//  Created by soyeonkim on 2018. 7. 18..
//  Copyright © 2018년 swuad_14. All rights reserved.
//

import Foundation

enum major : String {
    case computer = "컴퓨터학과"
    case informationSecurity = "정보보호학과"
    case contentsdesign = "콘텐츠디자인학과"
    case digitalMedia = "디지털미디어학과"
    case softwareConvergence = "소프트웨어융합학과"
}

class ProjectInfo {
    let title: String
    let image: Array<String>
//    let video:Array<String>
    let startDate: String
    let endDate: String
    let tags: Array<String>
    let summary: String
    let coworker: Array<String>

    let language: String
    let environment: String
    let motivation: String
    let benefit: String
    let detail: String
    
    let createdDate: String
    let author: String
    let major: String
    
    let likeCount:Int
    let commentCount:Int

    
    init(title: String,  image: Array<String>, startDate: String, endDate: String, tags: Array<String>, summary: String,  coworker: Array<String>, language:String, environment: String, motivation: String, benefit: String, detail:String, createdDate: String, author: String, major: String, likeCount: Int, commentCount: Int) {
        self.title = title
        self.image = image
        self.startDate = startDate
        self.endDate = endDate
        self.tags = tags
        self.summary = summary
        self.coworker = coworker
        self.language = language
        self.environment = environment
        self.motivation = motivation
        self.benefit = benefit
        self.detail = detail
        self.createdDate = createdDate
        self.author = author
        self.major = major
        self.likeCount = likeCount
        self.commentCount = commentCount
    }
}

class ProjectModel {
    static let ProjectModelSingleton = ProjectModel()
    var arrayList: Array<ProjectInfo>
    var selectedIndex: Int = 0
    
    private init() {
        self.arrayList = []
        
        let project1 = ProjectInfo(title: "공간캡슐", image: ["ui1.png","ui2.png"], startDate: "2018-03-08", endDate: "2018-06-22", tags: ["자바","씨쁠쁠","안드로이드"], summary: "소중한 공간 속 소중한 순간들", coworker: ["김소연", "박예빈", "이재은"], language: "서버 ,java", environment: "안드로이드 스튜디오 3.1.1, SQLite", motivation: "기억을 리마인드 할 수 있는 서비스를 만들고 싶었다.", benefit: "재밌을 것 같다. "
            ,  detail:" ", createdDate:"2018-06-22",  author: "이재은", major: "컴퓨터학과", likeCount:12, commentCount:3)
        self.arrayList.append(project1)
        
        let project2 = ProjectInfo(title: "무덤덤", image: ["ui1.png","ui2.png"], startDate: "2018-03-08", endDate: "2018-06-22", tags: ["고민상담","병원"], summary: "당신의 기억을 묻어 보세요. ", coworker: ["김소연", "박예빈", "이재은"], language: "서버 ,java", environment: "안드로이드 스튜디오, 마리아db", motivation: "행복한 글만 올리는 sns와 달리 고민을 올리는 sns가 필요하다고 생각했다.", benefit: "재밌을 것 같다. "
            ,  detail:" ", createdDate:"2018-06-22",  author: "이재은", major: "정보보호학과", likeCount:1, commentCount:8)
        self.arrayList.append(project2)
        
        let project3 = ProjectInfo(title: "세번째에요", image: ["ui1.png","ui1.png","ui2.png"], startDate: "2018-03-08", endDate: "2018-06-22", tags: ["자바","씨쁠쁠","안드로이드"], summary: "소중한 공간 속 소중한 순간들", coworker: ["김소연", "박예빈", "이재은"], language: "서버 ,java", environment: "안드로이드 스튜디오 3.1.1, SQLite", motivation: "바쁜 현대인들을 위해....,", benefit: "재밌을 것 같다.",  detail:" ", createdDate:"2018-06-22",  author: "이재은", major: "컴퓨터학과", likeCount:127, commentCount: 12)
        self.arrayList.append(project3)
    }
    
    
    
    func searchMajor(majorName: String) -> Array<ProjectInfo> {
        var modelProject: Array<ProjectInfo> = []
        for i in 1 ... arrayList.count {
            if majorName == arrayList[i-1].major {
                modelProject.append(arrayList[i-1])
            }
        }
        return modelProject
    }
    
    func searchProjectNumber(majorName: String) -> Int {
        var num = 0
        for i in 1 ... arrayList.count {
            if majorName == arrayList[i-1].major {
                num += 1
            }
        }
        return num
    }
    
    func searchProjectTitieOfTag(tagName: String) -> Array<String> {
        var resultArray: Array<String> = []
        for i in 0 ..< arrayList.count {
            for j in 0 ..< arrayList[i].tags.count {
                if tagName == arrayList[i].tags[j] {
//                    if(resultArray[i] == arrayList[i].tags[j] == tagName) {break}
//                    else {
                        resultArray.append(arrayList[i].title)
                        
//                    }
                }
            }
        }
        return resultArray
    }
    
    // 프로젝트 등록
    func addProject(title: String,  image: Array<String>, startDate: String, endDate: String, tags: Array<String>, summary: String,  coworker: Array<String>, language:String, environment: String, motivation: String, benefit: String, detail:String, createdDate: String, author: String, major: String, likeCount: Int, commentCount: Int) -> Void {
        self.arrayList.append(ProjectInfo(title: title, image: image, startDate: startDate, endDate: endDate, tags: tags, summary: summary, coworker: coworker, language: language, environment: environment, motivation: motivation, benefit: benefit, detail: detail, createdDate: createdDate, author: author, major: major, likeCount: likeCount, commentCount: commentCount))
    }
}
