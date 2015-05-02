//
//  PictureViewController.swift
//  AnimalPicker
//
//  Created by babykang on 15/4/5.
//  Copyright (c) 2015年 Fiona. All rights reserved.
//

import Foundation
import UIKit

class PictureViewController: UIViewController {
    var imageName:String?
    
    @IBOutlet var animalImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view, typically from a nib.
        
        if imageName != nil{
            animalImage.image = UIImage(named:imageName!)
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   

    @IBAction func close (segue: UIStoryboardPopoverSegue){
        println("close!")
    }

}