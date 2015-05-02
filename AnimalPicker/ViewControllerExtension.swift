//
//  ViewControllerExtension.swift
//  AnimalPicker
//
//  Created by babykang on 15/4/5.
//  Copyright (c) 2015年 Fiona. All rights reserved.
//

import Foundation
import UIKit

extension ViewController: UIPickerViewDataSource, UIPickerViewDelegate{
    // returns the number of 'columns' to display.
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int{
        return 1
    }
    
    // returns the # of rows in each component..
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return animals.count
    }
 
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String!{
        return animals[row]
    }
}