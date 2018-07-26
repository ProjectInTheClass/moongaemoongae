//
//  IdeaViewController.swift
//  moongae
//
//  Created by swuad_14 on 2018. 7. 24..
//  Copyright © 2018년 swuad_14. All rights reserved.
//

import UIKit
import DBSphereTagCloud

class IdeaViewController: UIViewController {
    
    @IBOutlet weak var searchView: UITextField!
    @IBOutlet weak var tagView: UIView!
    @IBOutlet var sphereView: DBSphereView!
    var patchView: SFPatchView!
    var tag: [[AnyObject]] = [["자바" as AnyObject, UIImage(named: "cloud3")!],
                                 ["감성" as AnyObject, UIImage(named: "cloud3")!],
                                 ["안드로이드" as AnyObject, UIImage(named: "cloud3")!],
                                 ["공공복지" as AnyObject, UIImage(named: "cloud3")!],
                                 ["보안" as AnyObject, UIImage(named: "cloud3")!],
                                 ["C++" as AnyObject, UIImage(named: "cloud3")!],
                                 ["음식" as AnyObject, UIImage(named: "cloud3")!],
                                 ["B급감성" as AnyObject, UIImage(named: "cloud3")!],
                                 ["여행" as AnyObject, UIImage(named: "cloud3")!],
                                 ["여름" as AnyObject, UIImage(named: "cloud3")!],
                                 ["자바" as AnyObject, UIImage(named: "cloud3")!],
                                 ["감성" as AnyObject, UIImage(named: "cloud3")!],
                                 ["안드로이드" as AnyObject, UIImage(named: "cloud3")!],
                                 ["공공복지" as AnyObject, UIImage(named: "cloud3")!],
                                 ["보안" as AnyObject, UIImage(named: "cloud3")!],
                                 ["C++" as AnyObject, UIImage(named: "cloud3")!],
                                 ["음식" as AnyObject, UIImage(named: "cloud3")!],
                                 ["B급감성" as AnyObject, UIImage(named: "cloud3")!],
                                 ["여행" as AnyObject, UIImage(named: "cloud3")!],
                                 ["여름" as AnyObject, UIImage(named: "cloud3")!]]
    
    var project: [[AnyObject]] = [["장애인을 위한 음성안내 서비스" as AnyObject, UIImage(named: "cloud1")!],
                                 ["익명 sns 서비스" as AnyObject, UIImage(named: "cloud1")!],
                                 ["무덤덤" as AnyObject, UIImage(named: "cloud1")!],
                                 ["AR코어 기반 위치 일기장 서비스" as AnyObject, UIImage(named: "cloud1")!],
                                 ["장애인을 위한 음성안내 서비스" as AnyObject, UIImage(named: "cloud1")!],
                                 ["익명 sns 서비스" as AnyObject, UIImage(named: "cloud1")!],
                                 ["무덤덤" as AnyObject, UIImage(named: "cloud1")!],
                                 ["AR코어 기반 위치 일기장 서비스" as AnyObject, UIImage(named: "cloud1")!]]
    
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
        for i in 0 ..< tag.count {
            let btn: UIButton = UIButton(type: .custom)
            btn.setTitle(tag[i][0] as? String, for: UIControlState())
            btn.setTitleColor(UIColor.black, for: .normal);
            btn.titleLabel?.font = UIFont.systemFont(ofSize: 18)
            btn.titleEdgeInsets = UIEdgeInsets(top: 0, left: 0 , bottom: -10, right: 0)
            btn.layer.masksToBounds = true
            btn.setBackgroundImage(tag[i][1] as? UIImage, for: UIControlState())
            btn.contentMode = UIViewContentMode.scaleAspectFit
            btn.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
            btn.layer.cornerRadius = 30
            btn.addTarget(self, action: #selector(IdeaViewController.buttonPressed(_:)), for: UIControlEvents.touchUpInside)
            array.add(btn)
            sphereView.addSubview(btn)
        }
        sphereView.setCloudTags(array as [AnyObject])
        sphereView.backgroundColor = UIColor.white
        self.view.addSubview(sphereView)
        self.view.bringSubview(toFront: tagView)
        self.view.bringSubview(toFront: searchView)
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
    
    @objc func buttonPressed(_ btn: UIButton) {
        isClicked = true
        if(isClicked) {
        sphereView.timerStop()
        UIView.animate(withDuration: 0.3, animations: {() -> Void in
            btn.transform = CGAffineTransform(scaleX: 3, y: 3)
            
            // 클릭한 버튼을 중심으로 view가 새로 생성되도록
            self.sphereView = DBSphereView(frame: CGRect(x: (btn.frame.origin.x-150), y: (btn.frame.origin.y-150), width: 300, height: 300))
            
            let array = NSMutableArray(capacity: 0)
            for i in 0 ..< self.project.count {
                let btn: UIButton = UIButton(type: UIButtonType.system)
                btn.setTitle((self.project[i][0] as! String), for: UIControlState())
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
            self.isClicked = false
            
        }) {
            (finished) -> Void in
            UIView.animate(withDuration: 0.3, animations: { () -> Void in
                btn.transform = CGAffineTransform(scaleX: 1, y: 1)
            }, completion: { (finished) -> Void in
                self.sphereView.timerStart()
            })
            }
        }
    }
    
    @objc func cloudHidden(_ btn: UIButton) {
        self.sphereView.isHidden = true
        self.sphereView.timerStop()
    }
    
//    @objc func buttonPressed2(_ btn: UIButton) {
//        isClicked = false
//        if(isClicked) {
//            sphereView.timerStop()
//            UIView.animate(withDuration: 0.3, animations: {() -> Void in
//                btn.transform = CGAffineTransform(scaleX: 3, y: 3)
//
//                // 클릭한 버튼을 중심으로 view가 새로 생성되도록
//                self.sphereView = DBSphereView(frame: CGRect(x: (btn.frame.origin.x-150), y: (btn.frame.origin.y-150), width: 300, height: 300))
//
//                let array = NSMutableArray(capacity: 0)
//                for i in 0 ..< self.project.count {
//                    let btn: UIButton = UIButton(type: UIButtonType.system)
//                    btn.setTitle((self.project[i][0] as! String), for: UIControlState())
//                    btn.setTitleColor(UIColor.red, for: .normal);
//                    btn.titleLabel?.font = UIFont.systemFont(ofSize: 12)
//                    btn.titleLabel?.sizeToFit()
//                    btn.titleEdgeInsets = UIEdgeInsets(top: 0, left: 0 , bottom: 0, right: 0)
//                    btn.layer.masksToBounds = true
//                    btn.setBackgroundImage((self.tag[i][1] as! UIImage), for: UIControlState())
//                    btn.contentMode = UIViewContentMode.scaleAspectFit
//                    btn.frame = CGRect(x: 0, y: 0, width: 70, height: 70)
//                    btn.layer.cornerRadius = 0
//
//                    // 프로젝트 구름은 클릭해도 다시 view가 생성되지 않음.
//                    // 대신, 해당 프로젝트 화면으로 이동해야 함. (아직 구현 미완료)
//                    btn.addTarget(self, action: #selector(IdeaViewController.buttonPressed2(_:)), for: UIControlEvents.touchUpInside)
//                    array.add(btn)
//                    self.sphereView.addSubview(btn)
//                }
//                self.sphereView.setCloudTags(array as [AnyObject])
//                self.view.addSubview(self.sphereView)
//                self.isClicked = false
//
//            }) {
//                (finished) -> Void in
//                UIView.animate(withDuration: 0.3, animations: { () -> Void in
//                    btn.transform = CGAffineTransform(scaleX: 1, y: 1)
//                }, completion: { (finished) -> Void in
//                    self.sphereView.timerStart()
//                })
//            }
//        }
//    }
}
