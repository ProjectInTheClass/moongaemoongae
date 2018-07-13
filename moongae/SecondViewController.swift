//
//  SecondViewController.swift
//  moongae
//
//  Created by swuad_14 on 2018. 7. 5..
//  Copyright © 2018년 swuad_14. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func touchDone( _sender: Any) {
        self.navigationController?.popViewController(animated: true)
        
 
    }

//    let animationView = LOTAnimationView(contentsOf: /Users/swuad_14/Downloads/animation-w2835-h1701.json)
//    self.view.addSubview(animationView)
//    animationView.play()
}


