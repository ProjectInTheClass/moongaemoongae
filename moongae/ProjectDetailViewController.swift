//
//  ProjectDetailViewController.swift
//  moongae
//
//  Created by swuad_13 on 2018. 7. 19..
//  Copyright © 2018년 swuad_14. All rights reserved.
//

import UIKit

class ProjectDetailViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    var project:ProjectInfo?
    var model = CommentModel.CommentModelSingleton
    
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelSummary: UITextView!
    @IBOutlet weak var labelCreatedDate: UILabel!
    @IBOutlet weak var labelMotivation: UITextView!
    @IBOutlet weak var labelEnvironment: UITextView!
    @IBOutlet weak var labelLanguage: UITextView!
    @IBOutlet weak var labelBenefit: UITextView!
    
    @IBAction func touchPhotoAdd(_ sender: Any) {
        let vcPicker = UIImagePickerController()
        
        vcPicker.allowsEditing = true
        vcPicker.sourceType = .photoLibrary
        vcPicker.delegate = self
        
        self.present(vcPicker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        picker.dismiss(animated: true, completion: nil)
        
        let image = info[UIImagePickerControllerEditedImage] as! UIImage
        
        let fileName = managerImage.saveImageToDocument(sourceImage: image)
        
        project?.image.append(fileName)
        
        let index = ProjectModel.ProjectModelSingleton.selectedIndex
        ProjectModel.ProjectModelSingleton.arrayList[index] = project!
 
        print(ProjectModel.ProjectModelSingleton.arrayList[0])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let detailProject = self.project!
        
        labelTitle.text = detailProject.title
        labelSummary.text = detailProject.summary
        labelCreatedDate.text = detailProject.createdDate
        labelMotivation.text = detailProject.motivation
        labelEnvironment.text = detailProject.environment
        labelLanguage.text = detailProject.language
        labelBenefit.text = detailProject.benefit
        
        
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
