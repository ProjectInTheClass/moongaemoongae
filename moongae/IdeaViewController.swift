//
//  IdeaViewController.swift
//  moongae
//
//  Created by swuad_14 on 2018. 7. 24..
//  Copyright © 2018년 swuad_14. All rights reserved.
//

import UIKit
import DBSphereTagCloud
import TagListView

class IdeaViewController: UIViewController {
    var modelProject = ProjectModel.ProjectModelSingleton
    
    @IBOutlet weak var searchView: UITextField!
    @IBOutlet weak var tagView: TagListView!
    @IBOutlet var sphereView: DBSphereView!
    @IBOutlet weak var sphereSmallView: UIView!
    var patchView: SFPatchView!
    
    var tag_test: [[AnyObject]] = [[]]
    var project_test: [[AnyObject]] = [[]]
    
    var tag: [[AnyObject]] = [["자바" as AnyObject, UIImage(named: "img_cloud_1")!],
                                 ["감성" as AnyObject, UIImage(named: "img_cloud_1")!],
                                 ["안드로이드" as AnyObject, UIImage(named: "img_cloud_1")!],
                                 ["공공복지" as AnyObject, UIImage(named: "img_cloud_1")!],
                                 ["보안" as AnyObject, UIImage(named: "img_cloud_2")!],
                                 ["C++" as AnyObject, UIImage(named: "img_cloud_2")!],
                                 ["음식" as AnyObject, UIImage(named: "cloud5")!],
                                 ["B급감성" as AnyObject, UIImage(named: "cloud5")!],
                                 ["여행" as AnyObject, UIImage(named: "cloud5")!],
                                 ["여름" as AnyObject, UIImage(named: "cloud5")!],
                                 ["자바" as AnyObject, UIImage(named: "img_cloud_1")!],
                                 ["감성" as AnyObject, UIImage(named: "img_cloud_1")!],
                                 ["안드로이드" as AnyObject, UIImage(named: "cloud5")!],
                                 ["공공복지" as AnyObject, UIImage(named: "img_cloud_2")!],
                                 ["보안" as AnyObject, UIImage(named: "cloud6")!],
                                 ["C++" as AnyObject, UIImage(named: "cloud6")!],
                                 ["음식" as AnyObject, UIImage(named: "img_cloud_2")!],
                                 ["B급감성" as AnyObject, UIImage(named: "cloud6")!],
                                 ["여행" as AnyObject, UIImage(named: "cloud6")!],
                                 ["여름" as AnyObject, UIImage(named: "cloud6")!]]
    
    
    var project: [[AnyObject]] = [["" as AnyObject,"장애인을 위한 음성안내 서비스" as AnyObject, UIImage(named: "cloud1")!],
                                 ["" as AnyObject,"익명 sns 서비스" as AnyObject, UIImage(named: "cloud1")!],
                                 ["" as AnyObject,"무덤덤" as AnyObject, UIImage(named: "cloud1")!],
                                 ["" as AnyObject,"AR코어 기반 위치 일기장 서비스" as AnyObject, UIImage(named: "cloud1")!],
                                 ["" as AnyObject,"장애인을 위한 음성안내 서비스" as AnyObject, UIImage(named: "cloud1")!],
                                 ["" as AnyObject,"익명 sns 서비스" as AnyObject, UIImage(named: "cloud1")!],
                                 ["" as AnyObject,"무덤덤" as AnyObject, UIImage(named: "cloud1")!],
                                 ["" as AnyObject,"AR코어 기반 위치 일기장 서비스" as AnyObject, UIImage(named: "cloud1")!]]
    
    var project2: [[AnyObject]] = [["자바" as AnyObject, "자바 -장애인을 위한 음성안내 서비스" as AnyObject, UIImage(named: "cloud1")!],
                                  ["자바" as AnyObject, "자바 -익명 sns 서비스" as AnyObject, UIImage(named: "cloud1")!],
                                  ["자바" as AnyObject, "자바 -무덤덤" as AnyObject, UIImage(named: "cloud1")!],
                                  ["자바" as AnyObject, "자바 -AR코어 기반 위치 일기장 서비스" as AnyObject, UIImage(named: "cloud1")!],
                                  ["자바" as AnyObject, "자바 -장애인을 위한 음성안내 서비스" as AnyObject, UIImage(named: "cloud1")!],
                                  ["자바" as AnyObject, "자바 -익명 sns 서비스" as AnyObject, UIImage(named: "cloud1")!],
                                  ["자바" as AnyObject, "자바 -무덤덤" as AnyObject, UIImage(named: "cloud1")!],
                                  ["자바" as AnyObject, "자바 -AR코어 기반 위치 일기장 서비스" as AnyObject, UIImage(named: "cloud1")!]]
    
    var isClicked:Bool = false
    
    
    // 원래 코드
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        sphereView = DBSphereView(frame: CGRect(x: -200, y: 200, width: 1000, height: 1000))
//        let array = NSMutableArray(capacity: 0)
//        for i in 0 ..< tag.count {
//            let btn: UIButton = UIButton(type: UIButtonType.system)
//            btn.setTitle(tag[i][0] as? String, for: UIControlState())
//            btn.setTitleColor(UIColor.black, for: .normal);
//            btn.titleLabel?.font = UIFont.systemFont(ofSize: 20)
//            btn.titleEdgeInsets = UIEdgeInsets(top: 0, left: 0 , bottom: 50, right: 0)
//            btn.layer.masksToBounds = true
//            btn.setBackgroundImage(tag[i][1] as? UIImage, for: UIControlState())
//            btn.contentMode = UIViewContentMode.scaleAspectFit
//            btn.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
//            btn.layer.cornerRadius = 30
//            btn.addTarget(self, action: #selector(IdeaViewController.buttonPressed(_:)), for: UIControlEvents.touchUpInside)
//            array.add(btn)
//            sphereView.addSubview(btn)
//        }
//        sphereView.setCloudTags(array as [AnyObject])
//        sphereView.backgroundColor = UIColor.white
//        self.view.addSubview(sphereView)
//    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sphereView = DBSphereView(frame: CGRect(x: -200, y: -200, width: 1000, height: 1000))
        let array = NSMutableArray(capacity: 0)
        
        // 프로젝트 모델에서 태그 가져오기
        var count = 0
        for i in 0 ..< modelProject.arrayList.count {
            for j in 0...modelProject.arrayList[i].tags.count-1{
                tag_test.append([modelProject.arrayList[i].tags[j] as AnyObject, UIImage(named: "cloud-5")!])
                count = count + 1
                
                print(tag_test)
            }
        }
        
        print(count)
        
        for i in 1 ..< count {
            // tag 설정
//            tagView.addTag(tag[i][0] as! String)
            // tagView.tagBackgroundColor = UIColor.blue
            tagView.addTag(tag_test[i][0] as! String)
            tagView.textFont = UIFont.systemFont(ofSize: 15)
            
            // btn 설정
            let btn: UIButton = UIButton(type: .custom)
            btn.setTitle(tag_test[i][0] as? String, for: UIControlState())
            btn.setTitleColor(UIColor.black, for: .normal);
            btn.titleLabel?.font = UIFont.systemFont(ofSize: 18)
            btn.titleEdgeInsets = UIEdgeInsets(top: 0, left: 0 , bottom: -10, right: 0)
            btn.layer.masksToBounds = true
            btn.setBackgroundImage(tag_test[i][1] as? UIImage, for: UIControlState())
            btn.contentMode = UIViewContentMode.scaleAspectFit
            btn.frame = CGRect(x: 0, y: 0, width: 150, height: 150)
            btn.layer.cornerRadius = 30
            
            // 태그 구름 클릭 시 프로젝트가 보임
            // 프로젝트가 보이는 상태에서 클릭하면 없어져야 함.
            if(!isClicked) {
                btn.addTarget(self, action: #selector(IdeaViewController.buttonPressed(_:)), for: UIControlEvents.touchUpInside)
            }
            else {sphereView.removeFromSuperview()}
            array.add(btn)
            sphereView.addSubview(btn)
        }
        
//        for i in 0 ..< tag.count {
//            // tag 설정
//            tagView.addTag(tag[i][0] as! String)
////            tagView.tagBackgroundColor = UIColor.blue
//            tagView.textFont = UIFont.systemFont(ofSize: 15)
//
//            // btn 설정
//            let btn: UIButton = UIButton(type: .custom)
//            btn.setTitle(tag[i][0] as? String, for: UIControlState())
//            btn.setTitleColor(UIColor.black, for: .normal);
//            btn.titleLabel?.font = UIFont.systemFont(ofSize: 18)
//            btn.titleEdgeInsets = UIEdgeInsets(top: 0, left: 0 , bottom: -10, right: 0)
//            btn.layer.masksToBounds = true
//            btn.setBackgroundImage(tag[i][1] as? UIImage, for: UIControlState())
//            btn.contentMode = UIViewContentMode.scaleAspectFit
//            btn.frame = CGRect(x: 0, y: 0, width: 150, height: 100)
//            btn.layer.cornerRadius = 30
//
//            // 태그 구름 클릭 시 프로젝트가 보임
//            // 프로젝트가 보이는 상태에서 클릭하면 없어져야 함.
//            if(!isClicked) {
//                btn.addTarget(self, action: #selector(IdeaViewController.buttonPressed(_:)), for: UIControlEvents.touchUpInside)
//            }
//            else {sphereView.removeFromSuperview()}
//            array.add(btn)
//            sphereView.addSubview(btn)
//        }
        sphereView.setCloudTags(array as [AnyObject])
        sphereView.backgroundColor = UIColor.white
        self.view.addSubview(sphereView)
        self.view.bringSubview(toFront: tagView)
        self.view.bringSubview(toFront: searchView)
        
        let gesture = UITapGestureRecognizer(target: self, action: #selector(IdeaViewController.someAction(_:)))
        self.sphereView.addGestureRecognizer(gesture)
    }
    
    // 원래 코드
//    @objc func buttonPressed(_ btn: UIButton) {
//        sphereView.timerStop()
//        UIView.animate(withDuration: 0.3, animations: { () -> Void in
//            btn.transform = CGAffineTransform(scaleX: 2, y: 2)
//        }) { (finished) -> Void in
//            UIView.animate(withDuration: 0.3, animations: { () -> Void in
//                btn.transform = CGAffineTransform(scaleX: 1, y: 1)
//            }, completion: { (finished) -> Void in
//                self.sphereView.timerStart()
//            })
//        }
//    }
    
    // 프로젝트에 대한 버튼
    @objc func buttonPressed(_ btn: UIButton) {
        isClicked = true
        sphereView.timerStop()
        
        UIView.animate(withDuration: 0.5, animations: {() -> Void in
            btn.transform = CGAffineTransform(scaleX: 3, y: 3)
            
            // 클릭한 버튼을 중심으로 view가 새로 생성되도록
            self.sphereView = DBSphereView(frame: CGRect(x: (btn.frame.origin.x-200), y: (btn.frame.origin.y-200), width: 300, height: 300))
            self.sphereSmallView = self.sphereView
            
            let array = NSMutableArray(capacity: 0)
            if(btn.titleLabel!.text == "자바") {self.project = self.project2}
            for i in 0 ..< self.project.count {
                let btn: UIButton = UIButton(type: UIButtonType.system)
                btn.setTitle((self.project[i][1] as! String), for: UIControlState())
                btn.setTitleColor(UIColor.blue, for: .normal);
                btn.titleLabel?.font = UIFont.systemFont(ofSize: 12)
                btn.titleLabel?.sizeToFit()
                btn.titleEdgeInsets = UIEdgeInsets(top: 0, left: 0 , bottom: -10, right: 0)
                btn.layer.masksToBounds = true
                btn.setBackgroundImage((self.tag[i][1] as! UIImage), for: UIControlState())
                btn.contentMode = UIViewContentMode.scaleAspectFit
                btn.frame = CGRect(x: 0, y: 0, width: 70, height: 70)
                btn.layer.cornerRadius = 0
                
                // 프로젝트 구름은 클릭해도 다시 view가 생성되지 않음.
                // 대신, 해당 프로젝트 화면으로 이동해야 함. (아직 구현 미완료)
//                btn.addTarget(self, action: #selector(IdeaViewController.buttonPressed(_:)), for: UIControlEvents.touchUpInside)
                btn.addTarget(self, action: #selector(IdeaViewController.cloudHidden(_:)), for: UIControlEvents.touchUpInside)
                
                array.add(btn)
                self.sphereView.addSubview(btn)
            }
            self.sphereView.setCloudTags(array as [AnyObject])
            self.view.addSubview(self.sphereView)
            self.view.bringSubview(toFront: self.tagView)
            self.view.bringSubview(toFront: self.searchView)
            
            let gesture = UITapGestureRecognizer(target: self, action: #selector(IdeaViewController.someAction(_:)))
            self.sphereView.addGestureRecognizer(gesture)
        }) {
            (finished) -> Void in
            UIView.animate(withDuration: 0.3, animations: { () -> Void in
                btn.transform = CGAffineTransform(scaleX: 1, y: 1)
            }, completion: { (finished) -> Void in
                self.sphereView.timerStart()
            })
            }
    }
    
    @objc func someAction(_ sender:UITapGestureRecognizer){
//        if(isClicked) {self.sphereView.isHidden = true}
        if(isClicked) {
            self.sphereSmallView.isHidden = true
            self.sphereView.timerStart()
        }
        
    }
    
    @objc func cloudHidden(_ btn: UIButton) {
        self.sphereView.isHidden = true
        self.sphereView.timerStop()
    }
}
