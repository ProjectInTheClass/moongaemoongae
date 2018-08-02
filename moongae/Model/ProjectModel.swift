//
//  ProjectModel.swift
//  moongae
//
//  Created by soyeonkim on 2018. 7. 18..
//  Copyright © 2018년 swuad_14. All rights reserved.
//

import Foundation
import UIKit

enum major : String {
    case computer = "컴퓨터학과"
    case informationSecurity = "정보보호학과"
    case contentsdesign = "콘텐츠디자인학과"
    case digitalMedia = "디지털미디어학과"
    case softwareConvergence = "소프트웨어융합학과"
}

//class ProjectInfo {
struct ProjectInfo: Codable {
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
    let createdDate: String
    let author: String
    let major: String
    
    init(title: String,  image: Array<String>, startDate: String, endDate: String, tags: Array<String>, summary: String,  coworker: Array<String>, language:String, environment: String, motivation: String, benefit: String, createdDate: String, author: String, major: String) {
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
        self.createdDate = createdDate
        self.author = author
        self.major = major
    }
}

class ProjectModel {
    static let ProjectModelSingleton = ProjectModel()
    var arrayList: Array<ProjectInfo>
    var selectedIndex: Int = 0
    
    private init() {
        self.arrayList = []
        
        let project1 = ProjectInfo(title: "공간캡슐", image: ["ui1.png","ui2.png"], startDate: "2018-03-08", endDate: "2018-06-22", tags: ["자바","씨쁠쁠","안드로이드","서버"], summary: "소중한 공간 속 소중한 순간들", coworker: ["김소연", "박예빈"], language: "서버 ,java", environment: "안드로이드 스튜디오 3.1.1, SQLite", motivation: "기억을 리마인드 할 수 있는 서비스를 만들고 싶었다.", benefit: "재밌을 것 같다. "
            , createdDate:"2018-06-22",  author: "이재은", major: "컴퓨터학과")
        self.arrayList.append(project1)
        
        let project4 = ProjectInfo(title : "시각장애인을 위한 셀카 가이드 어플리케이션", image : ["img_project4.jpg","img_project4(2).jpg"], startDate : "2018-07-30", endDate: "2018-11-31", tags : ["사회적약자","시각장애인","엔터테인먼트","모바일","안드로이드","서버"], summary: "2017년을 기준으로 전세계 SNS 사용자 수는 25억명에 달하고, 이렇게  소셜 미디어가 널리 사용됨에 따라 사진을 찍고 공유하는 일은 일상의 한 부분이 되었다. 자신의 얼굴을 직접 찍고 sns를 통해 공유하는 사람들도 많은데, 지난 1년 동안 구글 서버에 올라온 ‘셀카’가 무려 240억장에 이른다고 한다. 이러한 현대사회에서 셀카를 찍고 sns에 올리는 행위는 단순히 사진을 찍는다는 의미를 넘어 다른 사람들과 소통하고, 자신을 세상에 표현한다는 중요한 의미를 지니고 있다. 이렇게 자신의 사진을 찍고 sns에 공유하고 싶은 욕구는 시각장애인들에게도 마찬가지로 존재한다.", coworker: ["김유리", "이채연"], language: "JAVA", environment: "안드로이드 스튜디오,AWS, TTS(Text to Speech)", motivation: "기존의 voiceover나 talkback과 같은 스크린리더기처럼 얼굴 크기, 개수와 같이 간단한 정보만을 알려주는 것과는 다르게 머신러닝을 통해 최적의 셀카를 음성 가이드를 듣고 찍을 수 있도록 도와준다. 가격적인 측면에서는 api호출하는 부분 1000개당 0.01USD 저장된 얼굴 메타데이터 1,000개당 월별 요금은 0.01 USD이다. 스토리지 요금은 월별로 적용되며 1개월 미만은 비례 할당으로 계산된다. 이 프로젝트에서는 따로 서버를 사용하지는 않기 때문에 서버 구동 비용이 없고, aws api를 호출하는 만큼만 비용을 지불하기 때문에 그렇게 큰 비용이 들지 않을 것으로 예상한다. ", benefit: "본 프로젝트는 다른 추가적인 시스템이나 제도, 지원이 필요하지 않다는 부분에서 확실한 실현가능성을 가지고 있고, 프로젝트 자체만으로 시각장애인들의 사회적 참여 범위를 넓힌다는 데에 의미가 있습니다. 이번 프로젝트의 결과물을 통해 시각 장애인들이 셀카를 쉽게 찍고 다른 사람들과 공유할 수 있도록 도와줌으로써 셀카와 sns를 통한 사회적 소통이 증대되는 효과를 기대한다. ",   createdDate:"2018-03-22",  author: "지연주", major: "컴퓨터학과")
        
        self.arrayList.append(project4)
        
        
//        let project2 = ProjectInfo(title: "무덤덤", image: ["ui1.png","ui2.png"], startDate: "2018-03-08", endDate: "2018-06-22", tags: ["고민상담","병원","iOS", "익명"], summary: "당신의 기억을 묻어 보세요. ", coworker: ["김소연", "박예빈", "이재은"], language: "서버 ,java", environment: "안드로이드 스튜디오, 마리아db", motivation: "행복한 글만 올리는 sns와 달리 고민을 올리는 sns가 필요하다고 생각했다.", benefit: "재밌을 것 같다. "
//            ,  detail:" ", createdDate:"2018-06-22",  author: "이재은", major: "정보보호학과", commentCount:8)
//        self.arrayList.append(project2)
//        
//        let project3 = ProjectInfo(title: "세번째", image: ["ui1.png","ui1.png","ui2.png"], startDate: "2018-03-08", endDate: "2018-06-22", tags: ["자바","씨쁠쁠","안드로이드","고민상담","학교"], summary: "소중한 공간 속 소중한 순간들", coworker: ["김소연", "박예빈", "이재은"], language: "서버 ,java", environment: "안드로이드 스튜디오 3.1.1, SQLite", motivation: "바쁜 현대인들을 위해....,", benefit: "재밌을 것 같다.",  detail:" ", createdDate:"2018-06-22",  author: "이재은", major: "컴퓨터학과", commentCount: 12)
//        self.arrayList.append(project3)
        
        
        let project5 = ProjectInfo(title : "Raspberry pie를 이용한 스마트폰앱 방범 시스템", image : ["img_project5.jpg","img_project5(2).jpg"], startDate : "2018-02-08", endDate : "2018-11-01", tags: ["안전"], summary: "- Raspberry pie와 안드로이드 애플리케이션을 이용하여 외부에서의 침입을 감지하고 휴대폰으로 바로 확인할 수 있는 제품이 필요하다 생각함. ", coworker: ["김수은"], language: "Raspberry pie", environment: "Raspberry pie", motivation: "방범과 개인안전문제에 대하여 관심이 높아지고 있는데 일상에서 평범하게 사용하고 있는 CCTV같은 카메라는 촬영은 하지만 범죄가 진행되는 것을 막을 수는 없다", benefit: "안전\n- 외부의 침입에 대한 범죄에 대해서 미리 예방할 수 있다.\n보안\n- 혼자 생활하는 사람이 외출을 하거나 잠시 집을 비우게 되었을 때 생길 수 있는 사고를 예방할 수 있음"
            , createdDate:"2018-02-11",  author: "박수지", major: "정보보호학과")
        
        self.arrayList.append(project5)
        
        let project6 = ProjectInfo(title: " 음성 인식 및 유니버셜 디자인 UI/UX를 활용한 시각장애인을 위한 쇼핑 어플리케이션", image: ["img_project6.jpg","img_project6(2).jpg"], startDate: "2018-01-08", endDate: "2018-05-11", tags: ["시각장애인","사회적","쇼핑","어플리케이션"], summary: "모바일 어플리케이션 - 시각 장애인을 위한 실시간 정보 및 서비스 제공", coworker: ["정인채","김술현","이지린"], language: " Java, PHP, JSP, HTML, CSS ", environment: " 아파치, 톰캣, MySQ", motivation: "시각장애인을 위한 직관적인 UI를 디자인하여, App 접근성을 향상시키고자 함\n· 스마트폰에서 구현이 어려운 기존의 점자를 넘어 음성 인식 및 자연언어 처리를 통한 직관적인 소통의 수단을 제공하고자 함 ", benefit: "- 스마트폰이 익숙하지 않은 노인들을 위한 App 개발 및 서비스 제공\n            - 가전제품 또는 공공장소 안내 서비스 등과 같은 직관적인 서비스를 제공하는 기기에서의 활용 가능 "
            , createdDate:"2018-01-12",  author: "수기윤", major: "콘텐츠디자인")
        
        self.arrayList.append(project6)
        
        let project7 = ProjectInfo(title: "Right on Schedule - OCR기반의 일정등록 자동화서비스", image: ["img_project7.jpg","img_project7(2).jpg"], startDate: "2017-07-11", endDate: "2017-12-23", tags: ["OCR","일정등록","자동화"], summary: "일정등록 자동화를 통한 스마트라이프", coworker: ["김지인","유지해","김현수"], language: "텍스트 추출 (OCR)", environment: " 구글 캘린더 API", motivation: "일정이 많고 바쁜 현대인에게 일정을 하나하나 추가하기에 번거로움을 느꼈다.\n복사를 하거나 캡쳐, 사진찍기만으로 일정등록이 자동화된다면 편할것 같아서 본 프로젝트를 제안하게 되었다.  ", benefit: "1. 일정이 포함된 텍스트를 복사하면 클립보드에서 일정을 파싱하여 캘린더에 저장\n2. 일정이 포함된 사진을 찍거나 캡쳐하면 이미지에서 텍스트 를 추출, 일정을 파싱하여 캘린더에 저장 "
            , createdDate:"2018-07-15",  author: "구연지", major: "디지털미디어")
        
        self.arrayList.append(project7)
        
        let project8 = ProjectInfo(title: "딥러닝 기반 초·중 SW코딩 교육몰 구축(웹-앱)", image: ["img_project8(2).jpg"], startDate: "2017-06-01", endDate: "2017-10-03", tags: ["교육","웹","앱"], summary: " 초·중 SW코딩교육 의무화 연구·선도교 운영 등 신사업 영역에 대한 사업 및 기술적 개발 접근 ", coworker: ["유연수","고지은"], language: "자바", environment: "인공지능 및 딥러닝", motivation: " 초/중 SW코딩교육컨텐츠 설계와 딥러닝 기반의 맞춤형 교육 제공", benefit: "올해 시작되는 sw코딩의무교육에 대한 프로젝트 관리 경험 및 개발 경험 취득  ", createdDate:"2018-06-20",  author: "기향기", major: "컴퓨터학과")
        
        self.arrayList.append(project8)
        
        let project9 = ProjectInfo(title: "아두이노를 이용한 탭댄스 신발 - tap tap", image: ["img_project9.jpg"], startDate: "2017-05-30", endDate: "2017-09-30", tags: ["엔터테이먼트","아두이노"], summary: "탭댄스를 입문하는 사용자를 위한 것으로 혼자서도 시간과 장소에 구애받지 않고 탭댄스를 손쉽게 배울 수 있는 신발이다. ", coworker: ["김치영"], language: "자바,SQL", environment: "아두이노, 안드로이드", motivation: " 일상에 지친 사람들에게 여흥으로 학원에 등록하거나 하지 않아도 손쉽게 보드가 설치된 신발과 앱을 통해서만 탭댄스를 쉽게 배울 수 있다. 널리 알려진 탭댄스지만 접하기 희귀한 분야이므로 이 제품으로 그 장벽이 허물어질 수 있을 것이라 기대된다.  ",benefit: "신발을 이용한 댄스에 적용가능하다.  ", createdDate:"2018-06-02",  author: "박재경", major: "컴퓨터학과")
        
        self.arrayList.append(project9)
        
        let project10 = ProjectInfo(title: "인공지능 토이 공방 창업 인큐베이터", image: ["img_project10.jpg"], startDate: "2017-05-28", endDate: "2017-08-15", tags: ["인공지능","창업"], summary: "IBM의 왓슨 인공지능 서비스를 이용한 스마트 토이를 디자인하고 이를 공방 사업화할 수 있는 사업성 검토 ", coworker: ["홍지민","성도연"], language: "인공지능", environment: "인공지능", motivation: "  아동들에게 학습 교재로 사용될 수 있는 시나리오를 구상하고 스마트 토이가 미래의 교육 사업 아아템으로서의 가능성을 탐색하여 봅니다.", benefit: "인공지능 토이의 활용 시나리오를 기획하고 실물 샘플을   만들어봄으로써 실무 기획력을 함양 ", createdDate:"2018-05-29",  author: "장채리", major: "컴퓨터학과")
        
        self.arrayList.append(project10)
        
        let project11 = ProjectInfo(title: " 고령자의 구인구직 활성화를 위한 App", image: ["img_project11.jpg"], startDate: "2017-05-21", endDate: "2017-09-03", tags: ["고령자","노인","사회적약자"], summary: "사회 문제 분야로 취업을 원하는 취업 소외계층이 직접 파악하기 어려운 요소들을 정확하게 통계된 정보들을 접하는 기회를 가짐으로서 소외계층의 취업 문제를 해결하는데 영향을 미칠 수 있다. ", coworker: ["박혜주"], language: "Python", environment: "", motivation: "취업 소외 계층 지원을 위해 여러 기준에 맞는 취업 정보를 제공하고 고용을 원하는 기업들에 대해 조건에 맞는 고용자를 추천해줌으로써 서로 간의 빠른 일자리 네트워크 형성 ", benefit: " 취업 소외계층의 신상정보와 고용주 간의 취업 조건을 공유함으로써 일자리 창출을 활성화하면서 사회 문제 역시 해결할 수 있는 프로젝트로써의 가치가 있다.  ", createdDate:"2018-05-22",  author: "이소라", major: "컴퓨터학과")
        
        self.arrayList.append(project11)
        
        let project12 = ProjectInfo(title: "비콘을 활용한 실내 내비게이션", image: ["img_project12.jpg"], startDate: "2017-05-18", endDate: "2017-10-24", tags: ["비콘","내비게이션"], summary: "건물 정보와 비콘 디바이스의 위치를 연계하여 실내 네비게이션 구축 ", coworker: ["이도형"], language: "비콘", environment: "실내 측위 기술", motivation: "비콘 디바이스를 활용한 네비게이션 기능 구현 \n건물 정보와 비콘 디바이스의 위치를 연계하여 실내 네비게이션 구축  ", benefit: " 화재 발생시 빠른 대피로 가이드, 화재 진압시 빠르고 정확한 수색 가능, 비콘을 활용한 실내 측위 기술 확보 ", createdDate:"2018-05-20",  author: "오주은", major: "컴퓨터학과")
        
        self.arrayList.append(project12)
        
        let project13 = ProjectInfo(title: "클라우드 데이터 관리 시스템", image: ["img_project13.jpg"], startDate: "2017-05-12", endDate: "2017-08-24", tags: ["클라우드","데이터","데이터베이스"], summary: "데이터를 편리하고 효율적으로 관리하고 사용할 수 있도록 제공할 수 있는 클라우드 스케쥴러 ", coworker: ["곽은지","김희정"], language: "미정", environment: "클라우드", motivation: "보통 클라우드를 사용하는 사람들은 자료를 저장하고 디렉터리로 분류해서 사용하는데 이런 활용은 클라우드에 저장한 파일을 다양한 형태로 탐색하기 위한 효율적인 방안이 제시되어야 한다는데 있다.", benefit: " 클라우드 응용 : 다양한 클라우드를 효율적으로 제시하기 위한 응용으로 활용될 수 있을 것임 ", createdDate:"2018-05-20",  author: "곽소연", major: "디지털미디어학과")
        
        self.arrayList.append(project13)
        
        
        let project14 = ProjectInfo(title: "가상현실(AR)을 이용한 스마트 메뉴판", image: ["img_project14.jpg"], startDate: "2017-05-01", endDate: "2017-11-12", tags: ["가상현실","AR","스마트메뉴판"], summary: "사용자가 메뉴를 실제 주문하기 전이라도 메뉴를 주문했을 때와 유사한 환경을 AR로 체험 할 수 있으며, 모바일 결제와 주문도 가능하다. 매장 방문 전, 제공하는 매장에 대한 사전 정보(주차장, 분위기,단체 수용,수용인원, 매장 내부 사진,대표메뉴 등)를 통해  소비자에게는 매장 결정에 도움을, 점주에게는 광고효과를 주는 서비스이다. ", coworker: ["김혜리","이유빈"], language: "자바", environment: "Unity,Vuforia", motivation: "1. 마커 인식 : 마커에 해당하는 매장소개 페이지를 DB에서 불러와 화면에 출력하는 기능\n2. 3D 모델 : AR 기능을 통해 마커 위에 3D 음식 모델을 함께 보여주는 기능\n3. 음식정보 제공 : AR기능을 통해 재료, 소개,칼로리 정보를 보여주는 기능\n4. 웨이터 캐릭터 호출 : 음식 소개, 주문을 도와주는 AR캐릭터를 호출하는 기능, 간단한 대화 기능\n5. 장바구니 및 주문 기능 : 장바구니 목록에 있는 음식들을 주방 및 카운터에 전달하는 기능\n6. 모바일 결제 : 토스,카카오페이,모바일 계좌이체 같은 결제시스템과 연동", benefit: "1. 사회적 측면\n- 종이 메뉴판 감소에 따른 환경 보호\n- 우리나라 프랜차이즈 메뉴판 특성화를 통한 수출 증대\n- 음식 3D 모델링 전문가 등 일자리 창출 효과\n2. 기술적 측면\n- 소비자들의 음식 소비 형태에 대한 빅데이터를 마케팅에 사용 가능\n- 음식 3D 모델링 기술 수요 증가로 인한 음식 3D 모델링 기술 향상\n- AR에 친숙하지 못한 사용자에게 새로운 사용자 경험 제공 ", createdDate:"2018-05-02",  author: "한주연", major: "정보보호학과")
            
            self.arrayList.append(project14)
        
        
        let project15 = ProjectInfo(title: "데스크 탑 잠금해제 어플리케이션", image: ["img_project15.jpg"], startDate: "2017-04-29", endDate: "2017-09-12", tags: ["잠금","어플리케이션","자바"], summary: "데스크탑 PC의 잠금 및 해제 기능을 스마트폰과 연계하여 수행함으로서 보안성을 향상할 수 있는 새로운 시스템을 개발하는 것을 목표로 함. 이를 통해 데스크탑 PC 운영체제의 동작방식을 이해하고, 스마트폰과의 연동을 위한 기본 방식을 습득하는데 본 프로젝트의 목적이 있음. 스마트폰에서 사용자 인증은 다양한 형식으로 옵션을 제시해도 좋을 것임. ", coworker: ["해지윤","유빈우"], language: "자바", environment: "윈도우, 안드로이드스튜디오", motivation: "본 프로젝트의 예상결과물은 크게 데스크탑PC 프로그램과 사용자 인증을 위한 스마트폰 어플로 구성될 수 있음. 데스크탑 PC 프로그램은 주기적으로 시스템을 잠그고 스마트폰 사용자 인증을 통해 해제하는 기능을 제공함. 또한 스마트폰 어플은 데스크탑PC로부터 인증 요청을 수행하는 역할을 담당함.", benefit: "본 프로젝트를 통해 데스크탑PC의 사용자 인증을 위한 하나의 대안 응용을 개발할 수 있을 것으로 기대됨. 본 프로젝트의 결과를 통해 단순히 데스크탑PC의 사용자 인증 이외에도 다양한 시스템과 연계한 추가적인 장치인증을 통한 기법으로 발전시킬 수 있을 것임.", createdDate:"2018-04-22",  author: "주한연", major: "정보보호학과")
        
        self.arrayList.append(project15)
        
        let project16 = ProjectInfo(title: "Medicine Manager", image: ["img_project16.jpg"], startDate: "2017-04-28", endDate: "2017-12-12", tags: ["약","어플리케이션","자바"], summary: " 만성 환자뿐만 아니라 단기 환자 즉, 며칠정도만 약을 복용하는 사람이 사용하기에도 용이한 약통을 만들고자함.", coworker: ["연우진","지혜민"], language: "자바,아두이노", environment: "안드로이드스튜디오,, 아두이노", motivation: "ㅇ 사물인터넷(IoT, Internet of Things)은 다양한 산업과의 융복합을 통해 서비스 시장이 활성화되고 있음.\n- 헬스케어, 홈케어를 비롯해 자동차, 산업, 교통, 건설, 농업, 환경, 엔터테인먼트, 에너지, 안전, 식품 등에서 적용되고 있음.\n - 그 중, 헬스케어는 현재 사물인터넷을 가장 활발하게 이용하는 분야로 건강관리부터 원격진료에 이르기까지 성장 가능성이 매우 높은 분야로 꼽힘.  ",benefit: " ㅇMedicine Manager Box \n- Medicine Manager Box의 열림 유무를 어플리케이션으로 전송\n\n ㅇ Medicine Manager App\n- Medicine Manager Box와 연동하여 복용여부를 기록하고, 사용자에게 복용 및 소지 알람을 함\n- 복용 리포트를 전송함으로써 사후관리를 정확히 할 수 있게 함 ",   createdDate:"2018-04-21",  author: "박하민", major: "콘텐츠디자인학과")
        
        self.arrayList.append(project16)
        
        let project17 = ProjectInfo(title: "유동인구 빅데이터를 위한 와이파이 모니터링 시스템", image: ["img_project17.jpg"], startDate: "2017-04-10", endDate: "2017-7-24", tags: ["빅데이터","와이파이","클라우드"], summary: "1. 공공와이파이 확대\n2. 빅데이터 응용\n3. 스마트 시티 설계 ", coworker: ["김양희","최수연"], language: " raspberry pi, scapy", environment: " data mining ", motivation: "1. wifi captue\n2. 데이터 마이닝\n3. 웹을 통한 공공데이터 제공 " ,benefit: " 1 스마트 시티\n1) 교통 \n2) 범죄 \n2 스타트업 \n1) 사업성 평가 ", createdDate:"2018-04-20",  author: "이수연", major: "컴퓨터학과")
        
        self.arrayList.append(project17)
        
        let project18 = ProjectInfo(title: "IoT 및 ARVR 기반의 웹앱 연동 플랫폼 개발", image: ["img_project18.jpg"],startDate: "2017-04-06", endDate: "2017-07-12", tags: ["웹","플랫폼","IoT","사물인터넷"], summary: " 웹앱 기반의 하이브리드 하는 플랫폼 제작 ", coworker: ["나정화","김미연"], language: "Python", environment: "IoT", motivation: "의료, 교육, 콘텐츠 등의 양방향 플랫폼 운영 ",benefit: "보고서 및 실제 상용화를 목표로 합니다. .", createdDate:"2018-04-22",  author: "김민지", major: "정보보호학과")
        
        self.arrayList.append(project18)
        
        
        let project19 = ProjectInfo(title: "ISO27014 기반 산업제어시스템의 취약점진단 프로그램 개발", image: ["img_project19.jpg"],startDate: "2017-04-02", endDate: "2017-12-21", tags: ["취약점","정보보호","ISO"], summary: " 정보보안 요구사항 즉, 관리적/운영적/기술적 통제항목 등록  ", coworker: ["정하늘"], language: "인포그래픽스", environment: "Eclipse", motivation: " - ICS 중요성: 에너지/교통/통신/상하수도 등 주요 인프라가 제 역할을 하지 못할 경우 우리 삶에 큰 혼란 야기\n- ICS 대상 해킹: 이란 핵시설, 한수원 원전, 우크라이나 전력망 등 산업시설의 근간인 ICS 표적 공격 증가\n- 사이버위협 전문가 부족: 2017년 3월 포네몬 연구소 조사에 의하면 에너지 기관/기업 내부에 사이버 위협을 관리할  전문가가 부족하다고 55%가 응답 ", benefit: " - 해커는 인터넷에 연결된 외부 시스템과 폐쇄된 내부 망의 접점에서 발생할 수 있는 보안상 허점을 이용해 폐쇄망을 공격한 사례가 지속적으로 발견되고 있음\n- 국내 산업제어시스템의 체계적인 보안수준 강화를 위해 ISO27014(정보보안Governance 표준)의 영역과\n미국 원자력산업협회에서 발행한 ‘NEI 08-09'의 통제 항목을 통합하여 ICS 보안취약점 진단 프로그램 개발\n- 보안취약점 진단 프로그램에서 도출된 결과를 바탕으로 ICS 정보보안 Governance 구축의 초석 마련 ", createdDate:"2018-04-12",  author: "정효진", major: "정보보호학과")
        
        self.arrayList.append(project19)
        
        let project20 = ProjectInfo(title: "Cloud 기반의 B2B Commerce Open Platform 개발", image: ["img_project20.jpg"],startDate: "2017-03-06", endDate: "2017-09-12", tags: ["플랫폼","클라우드","플랫폼"], summary: " 머스 시장이 커져 나감에 따라 개인 사업자 또는 중소 사업자를 운영하는 업체가 커머스 플랫폼을 개발 하는 데 비용 및 시간이 필요하여 이를 개선하고자 본 프로젝트를 제안함  ", coworker: ["윤채민","최지혜"], language: "Cloud Sever Tech ", environment: "E-Commerce Tech ", motivation: "일반적인 사업자의 경우 제한된 상품을 가지고 거래를 하기 때문에 대형화된 커머스 플랫폼(또는 종합쇼핑몰)의 개념은 불필요하며 작은 규모의 커머스 플랫폼을 운영이 필요로 하여 제안하게 됨." ,benefit: "- 일반 소상공인 및 사업자의 자사 몰로의 활용\n- 오픈 플랫폼으로 의 활용", createdDate:"2018-04-22",  author: "김을미", major: "정보보호학과")
            
            self.arrayList.append(project20)
        
        
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
    
    // 모든 프로젝트에서, 이름으로 검색하여 프로젝트 가져오기
    func searchProjectOfTitle(title: String) -> Array<ProjectInfo> {
        var modelProject: Array<ProjectInfo> = []
        for i in 0 ..< arrayList.count {
            if title == arrayList[i].title {
                modelProject.append(arrayList[i])
            }
        }
        return modelProject
    }
    
    // 태그명 중복 없이 가져오기
    func searchProjectTag() -> Array<String> {
        var resultArray: Array<String> = []
        for i in 0 ..< arrayList.count {
            for j in 0 ..< arrayList[i].tags.count{
                if(!resultArray.contains(arrayList[i].tags[j])){
                    resultArray.append(arrayList[i].tags[j])
                }
            }
        }
        return resultArray
    }
    
    // 태그가 포함된 프로젝트명 가져오기
    func searchProjectNameOfTag(tagName: String) -> Array<String> {
        var resultArray: Array<String> = []
        for i in 0 ..< arrayList.count {
            for j in 0 ..< arrayList[i].tags.count {
                if tagName == arrayList[i].tags[j] {
                        resultArray.append(arrayList[i].title)
                }
            }
        }
        return resultArray
    }
    
//    // 태그가 포함된 프로젝트명 가져오기
//    func searchProject(title: String) -> Array<ProjectInfo> {
//        var modelProject: Array<ProjectInfo> = []
//        for i in 0 ..< arrayList.count {
//            if title == arrayList[i].title {
//                modelProject.append(arrayList[i])
//            }
//        }
//        return modelProject
//    }
    
    // 프로젝트 등록
    func addProject(title: String,  image: Array<String>, startDate: String, endDate: String, tags: Array<String>, summary: String,  coworker: Array<String>, language:String, environment: String, motivation: String, benefit: String, detail:String, createdDate: String, author: String, major: String, likeCount: Int) -> Void {
        self.arrayList.append(ProjectInfo(title: title, image: image, startDate: startDate, endDate: endDate, tags: tags, summary: summary, coworker: coworker, language: language, environment: environment, motivation: motivation, benefit: benefit, createdDate: createdDate, author: author, major: major ))
        print(title)
    }
}
