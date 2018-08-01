//
//  CreateProjectController.swift
//  moongae
//
//  Created by swuad_06 on 2018. 7. 25..
//  Copyright © 2018년 swuad_14. All rights reserved.
//

import UIKit

import Photos
import BSImagePicker


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
    

    
    var SelectedAssets = [PHAsset]()
    var PhotoArray = [UIImage]()
    
    
    @IBAction func addImage(_ sender: Any) {
       
        let vc = BSImagePickerViewController()
        
        bs_presentImagePickerController(vc, animated: true,
                                        select: { (asset: PHAsset) -> Void in
                                            // User selected an asset.
                                            // Do something with it, start upload perhaps?
        }, deselect: { (asset: PHAsset) -> Void in
            // User deselected an assets.
            // Do something, cancel upload?
        }, cancel: { (assets: [PHAsset]) -> Void in
            // User cancelled. And this where the assets currently selected.
        }, finish: { (assets: [PHAsset]) -> Void in
            // User finished with these assets
            for i in 0 ..< assets.count{
                self.SelectedAssets.append(assets[i])
            }
            self.convertAssetToImages()
        }, completion: nil)
    }
    
    func convertAssetToImages() -> Void {
        if SelectedAssets.count != 0 {
            for i in 0 ..< SelectedAssets.count {
                let manager = PHImageManager.default()
                let option = PHImageRequestOptions()
                var thumbnail = UIImage()
                option.isSynchronous = true
                manager.requestImage(for: SelectedAssets[i], targetSize: CGSize(width: 200, height: 200),
                                     contentMode: .aspectFill, options: option, resultHandler: {(result, info)->Void in
                                                                    thumbnail = result!
                })
                let data = UIImageJPEGRepresentation(thumbnail, 0.7)
                let newImage = UIImage(data: data!)
                self.PhotoArray.append(newImage! as UIImage)
            }
            self.imageView.animationImages = self.PhotoArray
            self.imageView.animationDuration = 3.0
            self.imageView.startAnimating()
        }
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
        self.view.endEditing(true)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
    
    
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
            if segue.identifier == "SendTeamMembers"
            {
    
                let vcUser = segue.destination as!
                    UserListViewController
                
                vcUser.vcCreatePRJ = self
            }
        }
    
    
    
}

