//
//  ViewController.swift
//  Multiples
//
//  Created by HamiltonMac on 1/25/16.
//  Copyright © 2016 HamiltonMac. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate
{
    
    @IBOutlet weak var logo:UIImageView!
    @IBOutlet weak var playBtn:UIButton!
    @IBOutlet weak var multipleBtn:UIButton!
    @IBOutlet weak var label:UILabel!
    @IBOutlet weak var multipleValue:UITextField!
    @IBOutlet weak var notepad:UIImageView!
    
    
    
    //Initial count variables
    var value:Int = 0
    var curVal:Int = 0
    var sum:Int = 0
  
    //Screen Parameters
    @IBAction func onGunPress(sender:UIButton!)
    {
        sum = value + curVal
        updateLbl()
        if isGameOver()
        {
            restartGame()
        }
        curVal += value
    }
    
    @IBAction func onPlayBtnPress(sender: UIButton!)
    {
        if multipleValue.text != nil && multipleValue.text != ""
        {
            //Screen Parameters
            
            logo.hidden = true
            playBtn.hidden = true
            multipleValue.hidden = true
            multipleBtn.hidden = false
            label.hidden = false
            notepad.hidden = false
            
            // Set label to say press button
            label.text = "Press gun to add multiple"
            // Set value to multiple value
            value = Int(multipleValue.text!)!
         }

    }
    
    func isGameOver()->Bool
    {
        if sum >= 50
        {
            return true
        }
        else
        {
            return false
        }
    
    }
    
    func restartGame()
    {
        sum=0
        curVal=0
        value = 0
        multipleValue.text = ""
       
        logo.hidden = false
        playBtn.hidden = false
        multipleValue.hidden = false
        multipleBtn.hidden = true
        label.hidden = true
        notepad.hidden = true
    
    }
    func updateLbl()
    {
        label.text = "\(curVal) + \(value) = \(sum)"
    }
}
