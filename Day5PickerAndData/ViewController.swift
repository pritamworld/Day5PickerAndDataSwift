//
//  ViewController.swift
//  Day5PickerAndData
//
//  Created by moxDroid on 2019-03-08.
//  Copyright © 2019 moxDroid. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource
{
    

    @IBOutlet weak var lblCountryName: UILabel!
    @IBOutlet weak var pickerCountry: UIPickerView!
    let countryList=["India","Canada","Germany","China","Pakistan","Nepal","Bangladesh","Australia","Iran","Qatar"]
    let cityList = ["Mumbai", "Delhi", "Punjab", "Surat", "Banglore"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.pickerCountry.delegate = self
        self.pickerCountry.dataSource = self
    }

    @IBAction func birthDatePicker(_ sender: UIDatePicker)
    {
        print(sender.date)
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0{
            return self.countryList.count
        }
        else if component == 1{
            return self.cityList.count
        }
        return 0
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0{
            return self.countryList[row]
        }
        return self.cityList[row]
        //return "Comp: \(component) - ROW : \(row)"
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        self.lblCountryName.text = "Country: \(self.countryList[self.pickerCountry.selectedRow(inComponent: 0)]), City: \(self.cityList[self.pickerCountry.selectedRow(inComponent: 1)])"
        
    }
}

