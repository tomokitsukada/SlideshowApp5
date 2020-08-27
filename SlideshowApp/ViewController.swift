//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 塚田朋来 on 2020/08/24.
//  Copyright © 2020 tomoki.tsukada. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var doraemon: UIImageView!
    
    
    let imageName = ["doraemon", "nobita", "shizuka"]
    
    var changeImgNo = 0
    
    
    @IBAction func susumu(_ sender: Any) {
        
        if changeImgNo == 0{
            changeImgNo = 1
        } else if changeImgNo == 1{
            changeImgNo = 2
        } else if changeImgNo == 2{
            changeImgNo = 0
        }
        let name = imageName[changeImgNo]
        
        doraemon.image = UIImage(named: name)
        
        
    }
    
    @IBAction func modoru(_ sender: Any) {
        if changeImgNo == 0{
            changeImgNo = 2
        } else if changeImgNo == 2{
            changeImgNo = 1
        }else if changeImgNo == 1{
            changeImgNo = 0
        }
        let name = imageName[changeImgNo]
        
        doraemon.image = UIImage(named: name)
    }
    
    
    
    
    
    var timer: Timer!
    
    var timer_sec: Float = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    @objc func updateTimer(_ timer: Timer) {
        if changeImgNo == 0{
            changeImgNo = 1
        } else if changeImgNo == 1{
            changeImgNo = 2
        }else if changeImgNo == 2{
            changeImgNo = 0
        }
        let name = imageName[changeImgNo]
        
        doraemon.image = UIImage(named: name)
        
        
    }
    
    
    
    
    var teishihenkou = 1
    
    @IBOutlet weak var saiseimozi: UIButton!
    
    
    @IBAction func kaeru(_ sender: Any) {
        if teishihenkou == 1{
            self.timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
            saiseimozi.setTitle("停止", for: .normal)
            teishihenkou = 2
            susumuosenai.isEnabled = false
            modoruosenai.isEnabled = false
            
        }else if teishihenkou == 2{
            self.timer.invalidate()
            saiseimozi.setTitle("再生", for: .normal)
            teishihenkou = 1
            susumuosenai.isEnabled = true
            modoruosenai.isEnabled = true
            
        }
    }
    
    
    
    
    
    @IBOutlet weak var susumuosenai: UIButton!
    
    @IBOutlet weak var modoruosenai: UIButton!
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のResultViewControllerを取得する
        let secondViewController:SecondViewController = segue.destination as! SecondViewController
        
        
        secondViewController.changeImgNo2 = changeImgNo
        
    

}

}
