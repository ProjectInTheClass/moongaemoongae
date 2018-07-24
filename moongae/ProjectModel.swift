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
    let title:String
    let createdDate:String
    let summary:String
//    let tags:Array<String>
//    let image:Array<String>
//    let video:Array<String>
    let tags:String
    let project_image:String
    // 비디오 추가해야함
    let startDate:String
    let endDate:String
    let major:String
//    let author:Array<String>
    let author:String
    let likeCount:Int
    let commentCount:Int
    let motivation:String
    let environment:String
    let language:String
    let detail:String
    let benefit:String
    
    init(title:String, createdDate:String, summary:String, tags:String, project_image:String, startDate:String, endDate:String, major:String, author:String, likeCount:Int, commentCount:Int, motivation:String, environment:String, language:String, detail:String, benefit:String) {
        self.title = title
        self.createdDate = createdDate
        self.summary = summary
        self.tags = tags
        self.project_image = project_image
        self.startDate = startDate
        self.endDate = endDate
        self.major = major
        self.author = author
        self.likeCount = likeCount
        self.commentCount = commentCount
        self.motivation = motivation
        self.environment = environment
        self.language = language
        self.detail = detail
        self.benefit = benefit
    }
}

class ProjectModel {
    var arrayList:Array<ProjectInfo>
    var selectedIndex:Int = 0
    
    init() {
        self.arrayList = []
        
        let project1 = ProjectInfo(title:"공간캡슐", createdDate:"2018-06-22", summary:"소중한 공간 속 소중한 순간들", tags:"자바", project_image:"ui1.png", startDate:"2018-03-08", endDate:"2018-06-22", major:"컴퓨터학과", author:"김소연, 박예빈, 이재은", likeCount:12, commentCount:3, motivation:"기억을 리마인드 할 수 있는 서비스를 만들고 싶었다.", environment: "안드로이드 스튜디오 3.1.1, SQLite", language: "서버 : java", detail:" ", benefit: "재밌을 것 같다. ")
        self.arrayList.append(project1)
        
        let project2 = ProjectInfo(title:"무덤덤", createdDate:"2018-07-10", summary:"당신의 기억을 묻어 보세요. ", tags:"고민상담", project_image:"ui2.png", startDate:"2018-06-22", endDate:"2018-06-22", major:"정보보호학과", author:"김소연, 박예빈, 이재은, 등등", likeCount:17, commentCount:13, motivation:"행복한 글만 올리는 sns와 달리 고민을 올리는 sns가 필요하다고 생각했다. ", environment: "안드로이드 스튜디오, 마리아db", language: "서버 : java", detail:"jsdfmsdlkfsfsfsdfsdfsdfdsfsdf", benefit: "sadfsadfasdfsdfsadfasddbdlr")
        self.arrayList.append(project2)
        
        let project3 = ProjectInfo(title:"세번째에요", createdDate:"2018-06-22", summary:"소중한 공간 속 소중한 순간들", tags:"자바", project_image:"img_ui_1.png", startDate:"2018-06-22", endDate:"2018-06-22", major:"컴퓨터학과", author:"김소연, 박예빈, 이재은", likeCount:12, commentCount:8, motivation:"바쁜 현대인들을 위해....", environment: "안드로이드 스튜디오....", language: "서버 : java", detail:"jsdfmsdlkfsfsfsdfsdfsdfdsfsdf", benefit: "sadfsadfasdfsdfsadfasddbdlr")
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
}
