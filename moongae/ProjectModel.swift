//
//  ProjectModel.swift
//  moongae
//
//  Created by soyeonkim on 2018. 7. 18..
//  Copyright © 2018년 swuad_14. All rights reserved.
//

import Foundation

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
    let formatter = DateFormatter()
    
    init() {
        self.arrayList = []
        
        let project1 = ProjectInfo(title:"공간캡슐", createdDate:"2018-06-22", summary:"소중한 공간 속 소중한 순간들", tags:"자바", project_image:"ui1.png", startDate:"2018-06-22", endDate:"2018-06-22", major:"컴퓨터학과", author:"김소연, 박예빈, 이재은", likeCount:12, commentCount:8, motivation:"바쁜 현대인들을 위해....", environment: "안드로이드 스튜디오....", language: "서버 : java", detail:"jsdfmsdlkfsfsfsdfsdfsdfdsfsdf", benefit: "sadfsadfasdfsdfsadfasddbdlr")
        self.arrayList.append(project1)
        
        let project2 = ProjectInfo(title:"두번째", createdDate:"2018-06-22", summary:"두번째에용", tags:"자바", project_image:"ui2.png", startDate:"2018-06-22", endDate:"2018-06-22", major:"정보보호학과", author:"김소연, 박예빈, 이재은", likeCount:12, commentCount:8, motivation:"바쁜 현대인들을 위해....", environment: "안드로이드 스튜디오....", language: "서버 : java", detail:"jsdfmsdlkfsfsfsdfsdfsdfdsfsdf", benefit: "sadfsadfasdfsdfsadfasddbdlr")
        self.arrayList.append(project2)
        
        let project3 = ProjectInfo(title:"세번째", createdDate:"2018-06-22", summary:"소중한 공간 속 소중한 순간들", tags:"자바", project_image:"img_ui_1.png", startDate:"2018-06-22", endDate:"2018-06-22", major:"컴퓨터학과", author:"김소연, 박예빈, 이재은", likeCount:12, commentCount:8, motivation:"바쁜 현대인들을 위해....", environment: "안드로이드 스튜디오....", language: "서버 : java", detail:"jsdfmsdlkfsfsfsdfsdfsdfdsfsdf", benefit: "sadfsadfasdfsdfsadfasddbdlr")
        self.arrayList.append(project3)
    }
}
