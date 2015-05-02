//
//  ViewController.swift
//  AnimalPicker
//
//  Created by babykang on 15/4/5.
//  Copyright (c) 2015年 Fiona. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var animalPiker: UIPickerView!
    
    var animals = ["鼠","牛","虎","龙","蛇","马"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animalPiker.dataSource = self
        animalPiker.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "gotoPicture"{
            let index = animalPiker.selectedRowInComponent(0)
            
            var imageName :String?
            switch index {
            case 0:
                imageName = "0"
            case 1:
                imageName = "1"
            case 2:
                imageName = "2"
            case 3:
                imageName = "4"
            case 4:
                imageName = "5"
            case 5:
                imageName = "6"
            default :
                imageName = nil
            }
            var vc = segue.destinationViewController as PictureViewController
            vc.imageName = imageName
        }

    }
    @IBAction func close (segue: UIStoryboardPopoverSegue){
        println("close!")
}
}
