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
    var btn: UIButton = UIButton(type: .custom)
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // search bar
        tagList = modelProject.searchProjectTag()
        var suggestionList = Array<ModernSearchBarModel>()
        for i in 0 ..< tagList.count {
            suggestionList.append(ModernSearchBarModel(title:tagList[i], url:""))
        }
        self.searchBar.setDatasWithUrl(datas: suggestionList)
        
        // tag
        tagView.addTags(tagList)
        tagView.textFont = UIFont.systemFont(ofSize: 18)
        
        // sphereView
        sphereView = DBSphereView(frame: CGRect(x: -200, y: -200, width: 1000, height: 1000))
        
        
        let array = NSMutableArray(capacity: 0)
        for i in 1 ..< tagList.count {
            // btn 설정
            let btn: UIButton = UIButton(type: .custom)
            btn.setTitle(tagList[i], for: UIControlState())
            btn.setTitleColor(UIColor.black, for: .normal);
            btn.titleLabel?.font = UIFont.systemFont(ofSize: 18)
            btn.titleEdgeInsets = UIEdgeInsets(top: 0, left: 0 , bottom: -10, right: 0)
            btn.layer.masksToBounds = true
            btn.setBackgroundImage(UIImage(named: "img_cloud")!, for: UIControlState())
            btn.contentMode = UIViewContentMode.scaleAspectFit
            btn.frame = CGRect(x: 0, y: 0, width: 140, height: 100)
            btn.layer.cornerRadius = 30
            
            // 태그 구름 클릭 시 프로젝트가 보임
            if(!isClicked) {
                sphereView.timerStop()
                btn.addTarget(self, action: #selector(IdeaViewController.buttonPressed(_:)), for: UIControlEvents.touchUpInside)
            }
            else {sphereView.removeFromSuperview()}
            array.add(btn)
            sphereView.addSubview(btn)
        }
        
        btn.addTarget(self, action: #selector(IdeaViewController.buttonPressed(_:)), for: UIControlEvents.touchUpInside)
        
        sphereView.setCloudTags(array as [AnyObject])
        sphereView.backgroundColor =  #colorLiteral(red: 0.7333333333, green: 0.8470588235, blue: 0.8549019608, alpha: 1)
        self.view.addSubview(sphereView)
        self.view.bringSubview(toFront: tagView)
        self.view.bringSubview(toFront: searchBar)
        
        // 배경 클릭 시 프로젝트 구름 사라짐
        let gesture = UITapGestureRecognizer(target: self, action: #selector(IdeaViewController.someAction(_:)))
        self.sphereView.addGestureRecognizer(gesture)
    }
    
    // 태그 버튼 눌렀을 때
    @objc func buttonPressed(_ btn: UIButton) {
        isClicked = true
        sphereView.timerStop()
        projectList = modelProject.searchProjectNameOfTag(tagName: (btn.titleLabel?.text)!)
        
        // 프로젝트 나오는 부분
        UIView.animate(withDuration: 0.5, animations: {() -> Void in
            btn.transform = CGAffineTransform(scaleX: 3, y: 3)
            // 클릭한 버튼을 중심으로 view가 새로 생성됨
            self.sphereView = DBSphereView(frame: CGRect(x: (btn.frame.origin.x-150), y: (btn.frame.origin.y-150), width: 300, height: 300))
            self.sphereSmallView = self.sphereView
            
            let array = NSMutableArray(capacity: 0)
            
            // 프로젝트명 가져오기
            for i in 0 ..< self.projectList.count {
                let btn: UIButton = UIButton(type: UIButtonType.system)
                btn.setTitle(self.projectList[i], for: UIControlState())
                btn.titleLabel?.font = UIFont.systemFont(ofSize: 12)
                btn.titleLabel?.sizeToFit()
                btn.titleEdgeInsets = UIEdgeInsets(top: 0, left: 0 , bottom: -10, right: 0)
                btn.layer.masksToBounds = true
                btn.setBackgroundImage(UIImage(named: "img_cloud"), for: UIControlState())
                btn.contentMode = UIViewContentMode.scaleAspectFit
                btn.frame = CGRect(x: 0, y: 0, width: 80, height: 50)
                btn.layer.cornerRadius = 0
            
                btn.addTarget(self, action: #selector(IdeaViewController.projectPressed(_:)), for: UIControlEvents.touchUpInside)
                array.add(btn)
                self.sphereSmallView.addSubview(btn)
            }
            self.sphereView.setCloudTags(array as [AnyObject])
            self.view.addSubview(self.sphereView)
            self.view.bringSubview(toFront: self.tagView)
            self.view.bringSubview(toFront: self.searchBar)
            
            let gesture = UITapGestureRecognizer(target: self, action: #selector(IdeaViewController.someAction(_:)))
            self.sphereView.addGestureRecognizer(gesture)
        }) {
            (finished) -> Void in UIView.animate(withDuration: 0.3, animations: {() -> Void in
                btn.transform = CGAffineTransform(scaleX: 1, y: 1)
            }, completion: { (finished) -> Void in
                self.sphereView.timerStart()
            })
            }
    }
    
    @objc func someAction(_ sender:UITapGestureRecognizer){
        if(isClicked) {
            self.sphereSmallView.isHidden = true
            sphereView.timerStop()
        }
        isClicked = false
    }
    
    // 프로젝트 선택 시
    // 해당 프로젝트로 이동해야함
    @objc func projectPressed(_ btn: UIButton) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Collection", bundle: nil)
        let nextView = storyboard.instantiateInitialViewController()
        self.present(nextView!, animated: true, completion: nil)
        
        print("\(String(describing: btn.titleLabel!.text))프로젝트 선택됨")
        self.sphereView.isHidden = true
        self.sphereView.timerStop()
    }
}
