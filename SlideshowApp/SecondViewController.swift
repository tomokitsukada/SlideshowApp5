//
//  SecondViewController.swift
//  SlideshowApp
//
//  Created by 塚田朋来 on 2020/08/27.
//  Copyright © 2020 tomoki.tsukada. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        let name = imageName[changeImgNo2]
           
           kakudai.image = UIImage(named: name)
        // Do any additional setup after loading the view.
    }
    
    
    
    let imageName = ["doraemon", "nobita", "shizuka"]
    
    var changeImgNo2 = 0
    
    @IBOutlet weak var kakudai: UIImageView!
    
    
    
    
    
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
