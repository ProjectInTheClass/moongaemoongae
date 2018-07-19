//
//  MajorModel.swift
//  moongae
//
//  Created by swuad_14 on 2018. 7. 19..
//  Copyright © 2018년 swuad_14. All rights reserved.
//

import Foundation

class MajorInfo {
    let major:String
    let number:Int
    
    init(major:String, number:Int) {
        self.major = major
        self.number = 0
    }
}

class MajorModel {
    var selectedIndex: Int = 0

    var arrayList: Array<MajorInfo>
    
    init() {
        self.arrayList = []
        
        self.arrayList.append(MajorInfo(major: "디지털미디어학과", number: 0))
        self.arrayList.append(MajorInfo(major: "소프트웨어융합학과", number: 0))
        self.arrayList.append(MajorInfo(major: "정보보호학과", number: 1))
        self.arrayList.append(MajorInfo(major: "컴퓨터학과", number: 2))
        self.arrayList.append(MajorInfo(major: "콘텐츠디자인학과", number: 0))
        
    }
}
