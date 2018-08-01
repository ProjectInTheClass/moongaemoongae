//
//  CollectionTableViewController.swift
//  moongae
//
//  Created by swuad_13 on 2018. 7. 18..
//  Copyright © 2018년 swuad_14. All rights reserved.
//

import UIKit

class CollectionTableViewController: UITableViewController {

//    var modelProject2 : Array<ProjectInfo>!
//    var modelProject : Array<ProjectInfo>!
//    var projectSingle = ProjectModel.ProjectModelSingleton.arrayList
//    var modelComment = CommentModel.CommentModelSingleton
    
//    var modelProject2 : Array<ProjectInfo>!
    var modelProject3 = ProjectModel.ProjectModelSingleton
    var modelProject2 : Array<ProjectInfo>!
    var modelProject : Array<ProjectInfo>!
    var projectSingle = ProjectModel.ProjectModelSingleton
    var modelComment = CommentModel.CommentModelSingleton

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if(modelProject2 == nil) {
            modelProject = modelProject3.arrayList
        }
        else {
            modelProject = modelProject2
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return modelProject.arrayList.count
        return modelProject.count
    }
    
   // var currentImage = 0
    
    func getRandomColor() -> UIColor {
        var colorRandom:Array<UIColor> = []
        colorRandom.append(UIColor(red: 8.0/255, green: 86/255, blue: 195/255, alpha: 1))
        colorRandom.append(UIColor(red: 21/255, green: 123/255, blue: 208/255, alpha: 1))
        colorRandom.append(UIColor(red: 0/255, green: 174/255, blue: 214/255, alpha: 1))
        
        let randomNo: UInt32 = arc4random_uniform(3);
        let randomNum:Int = Int(randomNo)
        return colorRandom[randomNum]
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell : CollectionTableViewCell! = tableView.dequeueReusableCell(withIdentifier: "Collection Cell", for: indexPath) as! CollectionTableViewCell
//        let info = self.modelProject.arrayList[indexPath.row]
        let info = self.modelProject[indexPath.row]
        
        
        for i in 0 ..< info.image.count {
            let imageView = UIImageView()
            imageView.image = UIImage(named: info.image[i])
             imageView.contentMode = .scaleAspectFit //  사진의 비율을 맞춤.
            let xPosition = self.view.frame.width * CGFloat(i)
            
            imageView.frame = CGRect(x: xPosition, y: -250,
                                     width: self.view.frame.width,
                                     height: self.view.frame.height) // 즉 이미지 뷰가 화면 전체를 덮게 됨.
            
            cell.scrollView.contentSize.width =
                self.view.frame.width * CGFloat(1+i)
            
            cell.scrollView.addSubview(imageView)
        }
        
        cell.title?.text = info.title
        cell.summary?.text = info.summary
        
        if cell.tagListView.tagViews.count != 0 {
            cell.tagListView.removeAllTags()
        }
        
        for i in 0...info.tags.count-1 {
            cell.tagListView.textFont = UIFont.systemFont(ofSize: 15)
            cell.tagListView.alignment = .left
            cell.tagListView.addTag(info.tags[i])
        }
        
        for view in cell.tagListView.tagViews {
            view.tagBackgroundColor = getRandomColor()
        }
        
        cell.createdDate?.text = info.createdDate
        cell.startDate?.text = info.startDate
        cell.endDate?.text = info.endDate
        cell.major?.text = info.major
        
        var coworkers = ""
        for i in 0...info.coworker.count-1 {
            coworkers.append(info.coworker[i] + " ")
        }
        coworkers.append(info.author)
        cell.coworker?.text = coworkers
        cell.commentCount?.text = "(\(String(info.commentCount)))"
        
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

                destination.title = "상세정보"
//               self.modelProject.selectedIndex = indexPath.row
//                self.projectSingle.selectedIndex = indexPath.row
//                destination.modelProject = self.projectSingle
                
                destination.project = self.modelProject[indexPath.row]
            }
        }


        if segue.identifier == "toComment" {
            if let destination = segue.destination as? CommentViewController {

                let btn = sender as! UIButton
                let cell = btn.superview?.superview?.superview as! UITableViewCell
                let indexPath:IndexPath! = self.tableView.indexPath(for: cell)
//                let info = self.projectSingle.arrayList[indexPath.row]
                
                let info = self.modelProject[indexPath.row]

                self.projectSingle.selectedIndex = tableView.indexPath(for: cell)!.row
                destination.modelProject = info

                var comment: Array<CommentInfo> = modelComment.searchForTitle(title: info.title)
                destination.comment = comment
//                destination.comment = self.modelProject[indexPath.row]
            }
        }
    }
}
