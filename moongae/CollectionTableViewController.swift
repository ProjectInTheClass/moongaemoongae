//
//  CollectionTableViewController.swift
//  moongae
//
//  Created by swuad_13 on 2018. 7. 18..
//  Copyright © 2018년 swuad_14. All rights reserved.
//

import UIKit

class CollectionTableViewController: UITableViewController {

    var modelProject = ProjectModel.ProjectModelSingleton
    var modelComment = CommentModel.CommentModelSingleton

    
           // cell.project_image?.image = UIImage(named: info.project_image)
    
   
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return modelProject.arrayList.count
    }
    
    var currentImage = 0
    
    func getRandomColor() -> UIColor{
        
        let randomRed: CGFloat = CGFloat(drand48())
        let randomGreen: CGFloat = CGFloat(drand48())
        let randomBlue: CGFloat = CGFloat(drand48())
        
        return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
        
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell : CollectionTableViewCell! = tableView.dequeueReusableCell(withIdentifier: "Collection Cell", for: indexPath) as! CollectionTableViewCell
        let info = self.modelProject.arrayList[indexPath.row]
        
        cell.title?.text = info.title
        cell.summary?.text = info.summary
        
        
        // 태그 ㅠㅠㅠㅠ 이상하게 찍혀ㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠ
        for i in 0...info.tags.count-1 {
            cell.tagListView.textFont = UIFont.systemFont(ofSize: 15)
            cell.tagListView.alignment = .left // possible values are .Left, .Center, and .Right
            //   for j in 0...info.tags[i].count-1 {
            print(info.tags[i].count-1)
            print(info.tags[i])
            cell.tagListView.tagBackgroundColor = getRandomColor()
            //   cell.tagListView.tagSelectedBackgroundColor = getRandomColor()
            cell.tagListView.addTag(info.tags[i])
            //}
            
        }
        
        // 이미지
        /*
         slideshow.setImageInputs([
         cell.project_image?.image(image: UIImage(named: "myImage"))!,
         cell.project_image?.image(image: UIImage(named: "myImage2"))!,
         cell.project_image?.image(urlString: "https://images.unsplash.com/photo-1432679963831-2dab49187847?w=1080"),
         cell.project_image?.image(urlString: "https://images.unsplash.com/photo-1432679963831-2dab49187847?w=1080"),
         ParseSource(file: PFFile(name:"image.jpg", data:data))
         ])*/
        
        cell.createdDate?.text = info.createdDate
        // cell.project_image?.image = UIImage(named: info.project_image)
        cell.startDate?.text = info.startDate
        cell.endDate?.text = info.endDate
        cell.major?.text = info.major
        
        
        // 팀원
        var coworkers = ""
        for i in 0...info.coworker.count-1 {
            coworkers.append(info.coworker[i] + " ")
        }
        coworkers.append(info.author)
        cell.coworker?.text = coworkers
        
        cell.likeCount?.text = String(info.likeCount)
        cell.commentCount?.text = String(info.commentCount)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 644
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toProjectDetail" {
            if let destination = segue.destination as? ProjectDetailViewController {
                
                let btn = sender as! UIButton
                let cell = btn.superview?.superview?.superview as! UITableViewCell
                
                let indexPath:IndexPath! = self.tableView.indexPath(for: cell)
                
                self.modelProject.selectedIndex = indexPath.row
                destination.modelProject = self.modelProject
            }
        }
        
        if segue.identifier == "toComment" {
            if let destination = segue.destination as? CommentViewController {
                
                let btn = sender as! UIButton
                let cell = btn.superview?.superview?.superview as! UITableViewCell
                let indexPath:IndexPath! = self.tableView.indexPath(for: cell)
                let info = self.modelProject.arrayList[indexPath.row]
                
                self.modelProject.selectedIndex = tableView.indexPath(for: cell)!.row
                destination.modelProject = self.modelProject
                
                var comment: Array<CommentInfo> = modelComment.searchForTitle(title: info.title)
                destination.comment = comment
            }
        }
    }
}
