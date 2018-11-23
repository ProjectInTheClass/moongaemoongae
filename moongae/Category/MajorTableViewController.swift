//
//  MajorTableViewController.swift
//  moongae
//
//  Created by swuad_14 on 2018. 7. 19..
//  Copyright © 2018년 swuad_14. All rights reserved.
//

import UIKit

class MajorTableViewController: UITableViewController {

    var modelMajor = MajorModel()
    var modelProject = ProjectModel.ProjectModelSingleton
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        myInfo.checkAndShowLogin()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.modelMajor.arrayList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let info = self.modelMajor.arrayList[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "MajorCell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = info.major
        cell.detailTextLabel?.text =  String(modelProject.searchProjectNumber(majorName: info.major))

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetail" {
            if let projectData = segue.destination as? MajorCollectionSortViewController {
                
                let cell = sender as! UITableViewCell
                let indexPath:IndexPath! =  self.tableView.indexPath(for: cell)
                self.modelMajor.selectedIndex = indexPath.row
                let majorName = modelMajor.arrayList[modelMajor.selectedIndex].major
                
                projectData.modelCollect = modelProject.searchMajor(majorName: majorName)
                
                projectData.title = modelMajor.arrayList[modelMajor.selectedIndex].major
                
            }
        }
    }
}

