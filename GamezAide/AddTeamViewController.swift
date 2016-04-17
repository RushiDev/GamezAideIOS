//
//  AddTeamViewController.swift
//  GamezAide
//
//  Created by Rushi Patel on 4/14/16.
//  Copyright © 2016 Datasoft. All rights reserved.
//

import Foundation

class AddTeamViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate {
    
    @IBOutlet var navButton: UIBarButtonItem!
    
    @IBOutlet var sportTextField: UITextField!
    @IBOutlet var sportPicker: UIPickerView!
    var sportData = ["Soccer", "Football", "Tennis", "Basketball"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if self.revealViewController() != nil {
            navButton?.target = self.revealViewController()
            navButton?.action = #selector(SWRevealViewController.revealToggle(_:))
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
        
        sportPicker.dataSource = self
        sportPicker.delegate = self
        sportPicker.hidden = true;
        
        sportTextField.delegate = self;
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // returns the number of 'columns' to display.
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int{
        return 1
    }
    
    // returns the # of rows in each component..
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return sportData.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return sportData[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        sportTextField.text = sportData[row]
        sportPicker.hidden = true;
    }
    
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
        sportPicker.hidden = false
        return false
    }
}

