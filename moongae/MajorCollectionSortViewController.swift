//
//  MajorCollectionSortViewController.swift
//  moongae
//
//  Created by swuad_14 on 2018. 7. 20..
//  Copyright © 2018년 swuad_14. All rights reserved.
//

import UIKit

//private let reuseIdentifier = "CollectionCell"

class MajorCollectionSortViewController: UIViewController,
UICollectionViewDelegate, UICollectionViewDataSource {
    
    var modelCollect: Array<ProjectInfo>!
//    var modelCollect: Array<ProjectInfo>!
    var modelProject = ProjectModel.ProjectModelSingleton
    
    @IBOutlet var collectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //   let infoProject = modelProject.arrayList[modelProject.selectedIndex[]]
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Register cell classes
        //        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return self.modelCollect.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        //        let cell : CollectionTableViewCell! = tableView.dequeueReusableCell(withIdentifier: "Collection Cell", for: indexPath) as! CollectionTableViewCell
        
        let cell : MajorCollectionViewCell! = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCell", for: indexPath) as! MajorCollectionViewCell
        
        let info = self.modelCollect[indexPath.row]
        
        cell.project_image?.image = UIImage(named: info.image[0])
        cell.title?.text = info.title
        cell.commentCount?.text = String(info.commentCount)
        
        return cell
    }
    

    func searchProject(title: String) -> Array<ProjectInfo> {
        var modelCollect2: Array<ProjectInfo> = []
        for i in 0 ..< modelCollect.count {
            if title == self.modelCollect[i].title {
                modelCollect2.append(self.modelCollect[i])
            }
        }
        
        return modelCollect2
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toPjtDetail" {
            if let destination = segue.destination as? CollectionTableViewController {
                
                let cell = sender as! UICollectionViewCell
                let indexPath: IndexPath! =  self.collectionView.indexPath(for: cell)
                self.modelProject.selectedIndex = indexPath.row
                let info = self.modelCollect[indexPath.row]
                
                print(info.title)
                print(modelCollect[indexPath.row])
                
                destination.title = "작품 보기"
                destination.modelProject2 = self.searchProject(title: info.title)
            }
        }
    }
    
}

