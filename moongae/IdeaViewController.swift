//
//  IdeaViewController.swift
//  moongae
//
//  Created by swuad_14 on 2018. 7. 24..
//  Copyright © 2018년 swuad_14. All rights reserved.
//

import UIKit

class IdeaViewController: UIViewController {

    @IBOutlet var ideaView: UIView!
    var modelKeyword = KeywordModel()
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let btn = UIButton()
       
      //  btn.setImage(#imageLiteral(resourceName: "CreateTrip").(resourceName: "cloud-3").withRenderingMode(.alwaysOriginal), for: .normal)
        btn.frame = CGRect(x: self.ideaView.frame.size.width - 60, y: self.ideaView.frame.size.height - 260, width: 50, height: 50)
        // button.backgroundColor = UIColor.red
        btn.setTitle("자바", for: .normal)
        //btn.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        self.view.addSubview(btn)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
