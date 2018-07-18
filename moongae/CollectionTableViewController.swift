//
//  CollectionTableViewController.swift
//  moongae
//
//  Created by swuad_13 on 2018. 7. 18..
//  Copyright © 2018년 swuad_14. All rights reserved.
//

import UIKit

class CollectionTableViewController: UITableViewController {

    var modelProject = ProjectModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return modelProject.arrayList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell : CollectionTableViewCell! = tableView.dequeueReusableCell(withIdentifier: "Collection Cell", for: indexPath) as! CollectionTableViewCell
        let info = self.modelProject.arrayList[indexPath.row]
        
        cell.title?.text = info.title
        cell.summary?.text = info.summary
        cell.tags?.text = info.tags
        cell.createdDate?.text = info.createdDate
        cell.project_image?.image = UIImage(named: info.project_image)
        cell.startDate?.text = info.startDate
        cell.endDate?.text = info.endDate
        cell.major?.text = info.major
        cell.author?.text = info.author
        cell.likeCount?.text = String(info.likeCount)
        cell.commentCount?.text = String(info.commentCount)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 696
    }

}
