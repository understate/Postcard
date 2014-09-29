//
//  ViewController.swift
//  Postcard
//
//  Created by Christian Köhler on 26.09.14.
//  Copyright (c) 2014 Christian A. Köhler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    

    @IBOutlet weak var emailButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendEmailButtonPressed(sender: UIButton) {
        // Code will evaluate when the key is pressed
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        emailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }
    
    

}

