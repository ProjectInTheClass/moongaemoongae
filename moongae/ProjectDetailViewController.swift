//
//  ProjectDetailViewController.swift
//  moongae
//
//  Created by swuad_13 on 2018. 7. 19..
//  Copyright © 2018년 swuad_14. All rights reserved.
//

import UIKit

class ProjectDetailViewController: UIViewController {
    
    var modelProject:ProjectModel!
    
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelSummary: UILabel!
    @IBOutlet weak var labelCreatedDate: UILabel!
    @IBOutlet weak var labelMotivation: UITextView!
    @IBOutlet weak var labelEnvironment: UITextView!
    @IBOutlet weak var labelLanguage: UITextView!
    @IBOutlet weak var labelDetail: UITextView!
    @IBOutlet weak var labelBenefit: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let detailProject = modelProject.arrayList[modelProject.selectedIndex]
        
        labelTitle.text = detailProject.title
        labelSummary.text = detailProject.summary
        labelCreatedDate.text = detailProject.createdDate
        labelMotivation.text = detailProject.motivation
        labelEnvironment.text = detailProject.environment
        labelLanguage.text = detailProject.language
        labelDetail.text = detailProject.detail
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
