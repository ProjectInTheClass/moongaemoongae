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

    @IBOutlet var ideaView: UIView!
    
    @IBOutlet var sphereView: DBSphereView!
    //var sphereView: DBSphereView!
    var patchView: SFPatchView!
    var person: [[AnyObject]] = [["Bili" as AnyObject, UIImage(named: "cloud3")!],
                                 ["Peach" as AnyObject, UIImage(named: "cloud3")!],
                                 ["Elina" as AnyObject, UIImage(named: "cloud3")!],
                                 ["Caroline" as AnyObject, UIImage(named: "cloud3")!],
                                 ["Xiuna" as AnyObject, UIImage(named: "cloud3")!],
                                 ["Caroline" as AnyObject, UIImage(named: "cloud3")!],
                                 ["Big" as AnyObject, UIImage(named: "cloud3")!],
                                 ["Lucy" as AnyObject, UIImage(named: "cloud3")!]]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sphereView = DBSphereView(frame: CGRect(x: 0, y: 200, width: 1000, height: 1000))
        let array = NSMutableArray(capacity: 0)
        for i in 0 ..< person.count {
            let btn: UIButton = UIButton(type: UIButtonType.system)
            btn.setTitle(person[i][0] as! String, for: UIControlState())
            btn.setTitleColor(UIColor.gray, for: .normal);
            btn.titleLabel?.font = UIFont.systemFont(ofSize: 14)
            btn.titleEdgeInsets = UIEdgeInsets(top: 0, left: 0 , bottom: 50, right: 0)
            btn.layer.masksToBounds = true
            btn.setBackgroundImage(person[i][1] as! UIImage, for: UIControlState())
            btn.contentMode = UIViewContentMode.scaleAspectFit
            btn.frame = CGRect(x: 0, y: 0, width: 60, height: 60)
            btn.layer.cornerRadius = 30
            btn.addTarget(self, action: #selector(IdeaViewController.buttonPressed(_:)), for: UIControlEvents.touchUpInside)
            array.add(btn)
            sphereView.addSubview(btn)
        }
        sphereView.setCloudTags(array as [AnyObject])
        sphereView.backgroundColor = UIColor.white
        self.view.addSubview(sphereView)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func buttonPressed(_ btn: UIButton) {
        sphereView.timerStop()
        UIView.animate(withDuration: 0.3, animations: { () -> Void in
            btn.transform = CGAffineTransform(scaleX: 2, y: 2)
        }) { (finished) -> Void in
            UIView.animate(withDuration: 0.3, animations: { () -> Void in
                btn.transform = CGAffineTransform(scaleX: 1, y: 1)
            }, completion: { (finished) -> Void in
                self.sphereView.timerStart()
            })
        }
    }
}
