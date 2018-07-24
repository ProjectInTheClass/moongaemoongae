//
//  KeywordModel.swift
//  moongae
//
//  Created by swuad_14 on 2018. 7. 24..
//  Copyright © 2018년 swuad_14. All rights reserved.
//

import Foundation

class KeywordInfo {
    let keyword:String
    let number:Int
    
    init(keyword:String, number:Int) {
        self.keyword = keyword
        self.number = 0
    }
}

class KeywordModel {
    // var selectedIndex: Int = 0
    
    var arrayList: Array<KeywordInfo>
    
    init() {
        self.arrayList = []
        
        self.arrayList.append(KeywordInfo(keyword: "자바", number: 1))
        self.arrayList.append(KeywordInfo(keyword: "스위프트", number: 3))
        self.arrayList.append(KeywordInfo(keyword: "안드로이드", number: 1))
        self.arrayList.append(KeywordInfo(keyword: "씨쁠쁠", number: 2))
        self.arrayList.append(KeywordInfo(keyword: "아이스에스", number: 4))
        
    }
}
