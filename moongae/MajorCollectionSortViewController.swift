//
//  MajorCollectionSortViewController.swift
//  moongae
//
//  Created by swuad_14 on 2018. 7. 20..
//  Copyright © 2018년 swuad_14. All rights reserved.
//

import UIKit

//private let reuseIdentifier = "CollectionCell"

class MajorCollectionSortViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var modelCollect: Array<ProjectInfo>!
    
    @IBOutlet var collectionView: UICollectionView!
    @IBOutlet var sortSegment: UISegmentedControl!
    
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
        
        cell.project_image?.image = UIImage(named: info.project_image)
        cell.title?.text = info.title
        cell.likeCount?.text = String(info.likeCount)
        cell.commentCount?.text = String(info.commentCount)
        
        return cell
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

