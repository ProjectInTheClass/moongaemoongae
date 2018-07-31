//
//  CreateProjectController.swift
//  moongae
//
//  Created by swuad_06 on 2018. 7. 25..
//  Copyright © 2018년 swuad_14. All rights reserved.
//

import UIKit

class CreateProjectController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var modelProject = ProjectModel.ProjectModelSingleton
    
    //     @IBOutlet weak var createdDate: UILabel!
    @IBOutlet var projectTitle: UITextField!
    @IBOutlet var imageView: UIImageView!
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
    
    let picker = UIImagePickerController()
    
    @IBAction func addImage(_ sender: Any) {
        picker.delegate = self;
        picker.sourceType = .photoLibrary
        self.present(picker, animated: true, completion: nil)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
        self.view.endEditing(true)
    }
    
    
    func imagePickerController (_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String:Any]) {
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage {
            self.imageView.image = image
        }
        self.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @objc func tappedImageView() {
        let picker = UIImagePickerController()
        picker.delegate = self;
        picker.sourceType = .photoLibrary
        self.present(picker, animated: true, completion: nil)
    }
    
    
    //    ELCImagePickerController *elcPicker = [[ELCImagePickerController alloc] initImagePicker];
    //    elcPicker.maximumImagesCount = 4; //Set the maximum number of images to select, defaults to 4
    //    elcPicker.returnsOriginalImage = NO; //Only return the fullScreenImage, not the fullResolutionImage
    //    elcPicker.returnsImage = YES; //Return UIimage if YES. If NO, only return asset location information
    //    elcPicker.onOrder = YES; //For multiple image selection, display and return selected order of images
    //    elcPicker.imagePickerDelegate = self;
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.delegate = self
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(CreateProjectController.tappedImageView))
        addImageBtn.addGestureRecognizer(tap)
        addImageBtn.isUserInteractionEnabled = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func CreateProject(_ sender: UIBarButtonItem) {
        //        performSegue(withIdentifier: "CreateProject", sender: self)
        
        // var commentContent:String = ""
        
        modelProject.addProject(title: projectTitle.text!,  image: ["ui1.png"], startDate: "07-23", endDate: "07-26", tags: ["태그", "나는"], summary: summary.text!,  coworker: ["왜", "왜", "왜"], language: language.text!, environment:  environment.text!, motivation: motivation.text!, benefit: benefit.text!, detail: detail.text!, createdDate: "07-25", author: "이재은", major: "컴퓨터학과", likeCount: 0, commentCount: 0)
        
        
        //        modelProject.addProject(title: "네번째에요", image: ["ui1.png","ui1.png","ui2.png"], startDate: "2018-03-08", endDate: "2018-06-22", tags: ["자바","씨쁠쁠","안드로이드"], summary: "소중한 공간 속 소중한 순간들", coworker: ["김소연", "박예빈", "이재은"], language: "서버 ,java", environment: "안드로이드 스튜디오 3.1.1, SQLite", motivation: "바쁜 현대인들을 위해....,", benefit: "재밌을 것 같다.",  detail:" ", createdDate:"2018-06-22",  author: "이재은", major: "컴퓨터학과", likeCount:127, commentCount: 12)
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
    
    
    
}

