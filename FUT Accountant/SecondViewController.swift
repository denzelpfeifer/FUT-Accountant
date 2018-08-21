//
//  SecondViewController.swift
//  FUT Accountant
//
//  Created by Pfeifer, Denzel on 8/21/18.
//  Copyright © 2018 Pfeifer, Denzel. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    

    @IBOutlet weak var wlswitch: UISwitch!
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var osswitch: UISwitch!
    
    @IBAction func buttonClicked(_ sender: Any) {
        if wlswitch.isOn {
            
        }
    }
    var pickerData: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        picker.delegate = self
        picker.dataSource = self
        
        pickerData = ["Division 1", "Division 2", "Division 3", "Division 4", "Division 5", "Division 6", "Division 7", "Division 8", "Division 9", "Division 10"]
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1;
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

