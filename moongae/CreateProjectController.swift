//
//  CreateProjectController.swift
//  moongae
//
//  Created by swuad_06 on 2018. 7. 25..
//  Copyright © 2018년 swuad_14. All rights reserved.
//

import UIKit

class CreateProjectController: UIViewController {
    
    var modelProject = ProjectModel.ProjectModelSingleton
    
//     @IBOutlet weak var createdDate: UILabel!
    @IBOutlet var projectTitle: UITextField!
    @IBOutlet var image: UIImageView!
    @IBOutlet var startDate: UIDatePicker!
    @IBOutlet var endDate: UIDatePicker!

    @IBOutlet var tags: UITextField!
    @IBOutlet var summary: UITextField!
    @IBOutlet var coworker: UITextField!
    
    @IBOutlet var language: UITextField!
    @IBOutlet var environment: UITextField!
    @IBOutlet var motivation: UITextView!
    @IBOutlet var benefit: UITextView!
    @IBOutlet var detail: UITextView!
    
    @IBOutlet var addImageBtn: UIButton!
    @IBOutlet var addCoworker: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func CreateProject(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "CreateProject", sender: self)
        
        // var commentContent:String = ""
        
        modelProject.addProject(title: projectTitle.text!,  image: ["ui1.png"], startDate: "07-23", endDate: "07-26", tags: ["태그", "나는"], summary: summary.text!,  coworker: ["왜", "왜", "왜"], language: language.text!, environment:  environment.text!, motivation: motivation.text!, benefit: benefit.text!, detail: detail.text!, createdDate: "07-25", author: "이재은", major: "컴퓨터학과", likeCount: 0, commentCount: 0)
        
        
       // self. = self.modelComment.searchForTitle(title: labelTitle.text!)
       
        // tableView.reloadData()
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        
//        if segue.identifier == "CreateProjectSegue"
//        {
//            
//            let CollectionTableVC = segue.destination as! CollectionTableViewController
//            
//            CollectionTableVC.data = 
//        }
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
