//  ViewController.swift
//  CALCY-V2
//
//  Created by Mohamed El Zedy on 1/21/18.
//  Copyright © 2018 Mohamed El Zedy. All rights reserved.

import UIKit

class ViewController: UIViewController {
    
    //=====Make the charching bar white===//
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    
    @IBOutlet weak var ResulLabel: UILabel!
    
    let Brain : BrainCalcy = BrainCalcy()
    
    @IBAction func ButtonsAction(_ sender: UIButton) {
        
        //== Fixing first Zero number ==//
        if ResulLabel.text == "0" {ResulLabel.text = ""}
        
        if sender.tag == -1{
            if !ResulLabel.text!.contains("."){ResulLabel.text = ResulLabel.text! + "."}
        }else { ResulLabel.text = ResulLabel.text! + String(sender.tag)}
        
    }
    
    
    @IBAction func OperationsButtonsActions(_ sender: UIButton) {
        
        Brain.Add(Number: Double(ResulLabel.text!)!, with: Character(sender.titleLabel!.text!))
        if sender.titleLabel!.text! == "="{
            ResulLabel.text = Brain.Result()
            Brain.Restart()
        }else { ResulLabel.text = "0"}
        
    }
    
    @IBAction func AcAction(_ sender: UIButton) {
        
        ResulLabel.text = "0"
        Brain.Restart()
    }
    
    @IBAction func plusOrMinAction(_ sender: UIButton) {
        ResulLabel.text = String(Double(ResulLabel.text!)! * -1 )
    }
    
    @IBAction func PrecentAction(_ sender: UIButton) {
        ResulLabel.text = String(Double(ResulLabel.text!)! / 100 )

    }
    
    
    
}

