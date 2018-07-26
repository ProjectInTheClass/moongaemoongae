//
//  CreateProjectController.swift
//  moongae
//
//  Created by swuad_06 on 2018. 7. 25..
//  Copyright © 2018년 swuad_14. All rights reserved.
//

import UIKit

class CreateProjectController: UIViewController {
    
//     @IBOutlet weak var createdDate: UILabel!
    @IBOutlet weak var project_image: UIImageView!
    @IBOutlet weak var startDate: UIDatePicker!
    @IBOutlet weak var endDate: UIDatePicker!
    @IBOutlet weak var Projecttitle: UITextField!
    @IBOutlet weak var tags: UITextField!
    @IBOutlet weak var summary: UITextField!
    @IBOutlet weak var language: UITextField!
//    @IBOutlet weak var enviroments: UITextField!
    //개발언어 부터 선택사항인데 어떻게 선언?
    

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
