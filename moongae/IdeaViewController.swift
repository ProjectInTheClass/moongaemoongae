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
import ModernSearchBar

class IdeaViewController: UIViewController, ModernSearchBarDelegate {
    var modelProject = ProjectModel.ProjectModelSingleton
    
    @IBOutlet weak var searchBar: ModernSearchBar!
    @IBOutlet weak var tagView: TagListView!
    @IBOutlet var sphereView: DBSphereView!
    @IBOutlet weak var sphereSmallView: UIView!
    var patchView: SFPatchView!
    
    var tagList: Array<String> = []
    var projectList: Array<String> = []
    
    var isClicked:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // search bar
        // 프로젝트 모델에서 태그 가져오기
        tagList = modelProject.searchProjectTag()
        
        var suggestionList = Array<ModernSearchBarModel>()
        for i in 1 ..< tagList.count {
            suggestionList.append(ModernSearchBarModel(title:tagList[i] as! String, url:""))
        }
        self.searchBar.setDatasWithUrl(datas: suggestionList)
        
        sphereView = DBSphereView(frame: CGRect(x: -200, y: -200, width: 1000, height: 1000))
        let array = NSMutableArray(capacity: 0)
        
        for i in 1 ..< tagList.count {
            // tag 설정
            tagView.addTag(tagList[i] as! String)
            tagView.textFont = UIFont.systemFont(ofSize: 15)
            
            // btn 설정
            let btn: UIButton = UIButton(type: .custom)
            btn.setTitle(tagList[i] as? String, for: UIControlState())
            btn.setTitleColor(UIColor.black, for: .normal);
            btn.titleLabel?.font = UIFont.systemFont(ofSize: 18)
            btn.titleEdgeInsets = UIEdgeInsets(top: 0, left: 0 , bottom: -10, right: 0)
            btn.layer.masksToBounds = true
            btn.setBackgroundImage(UIImage(named: "cloud-5")!, for: UIControlState())
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
        
        sphereView.setCloudTags(array as [AnyObject])
        sphereView.backgroundColor = UIColor.white
        self.view.addSubview(sphereView)
        self.view.bringSubview(toFront: tagView)
        self.view.bringSubview(toFront: searchBar)
        
        let gesture = UITapGestureRecognizer(target: self, action: #selector(IdeaViewController.someAction(_:)))
        self.sphereView.addGestureRecognizer(gesture)
    }
    
    // 프로젝트에 대한 버튼
    @objc func buttonPressed(_ btn: UIButton) {
        isClicked = true
        sphereView.timerStop()
        
        projectList = modelProject.searchProjectNameOfTag(tagName: (btn.titleLabel?.text)!)
        
        UIView.animate(withDuration: 0.5, animations: {() -> Void in
            btn.transform = CGAffineTransform(scaleX: 3, y: 3)
            
            // 클릭한 버튼을 중심으로 view가 새로 생성되도록
            self.sphereView = DBSphereView(frame: CGRect(x: (btn.frame.origin.x-200), y: (btn.frame.origin.y-200), width: 300, height: 300))
            self.sphereSmallView = self.sphereView
            
            let array = NSMutableArray(capacity: 0)
            
            // 프로젝트명 가져오기
            for i in 0 ..< self.projectList.count {
                let btn: UIButton = UIButton(type: UIButtonType.system)
                btn.setTitle(self.projectList[i], for: UIControlState())
                btn.setTitleColor(UIColor.blue, for: .normal);
                btn.titleLabel?.font = UIFont.systemFont(ofSize: 12)
                btn.titleLabel?.sizeToFit()
                btn.titleEdgeInsets = UIEdgeInsets(top: 0, left: 0 , bottom: -10, right: 0)
                btn.layer.masksToBounds = true
                btn.setBackgroundImage(UIImage(named: "cloud-5"), for: UIControlState())
                btn.contentMode = UIViewContentMode.scaleAspectFit
                btn.frame = CGRect(x: 0, y: 0, width: 70, height: 70)
                btn.layer.cornerRadius = 0
            
                btn.addTarget(self, action: #selector(IdeaViewController.projectPressed(_:)), for: UIControlEvents.touchUpInside)
                array.add(btn)
                self.sphereView.addSubview(btn)
            }
            
            self.sphereView.setCloudTags(array as [AnyObject])
            self.view.addSubview(self.sphereView)
            self.view.bringSubview(toFront: self.tagView)
            self.view.bringSubview(toFront: self.searchBar)
            
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
        if(isClicked) {
            self.sphereSmallView.isHidden = true
            self.sphereView.timerStart()
        }
        
    }
    
    // 프로젝트 선택 시
    // 해당 프로젝트로 이동해야함
    @objc func projectPressed(_ btn: UIButton) {
        print("\(String(describing: btn.titleLabel!.text))프로젝트 선택됨")
        self.sphereView.isHidden = true
        self.sphereView.timerStop()
    }
}
