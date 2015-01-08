//
//  ViewController.swift
//  Postcard
//
//  Created by Jack Pfeiffer on 1/6/15.
//  Copyright (c) 2015 Jack Pfeiffer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        // Adding a comment here to test commits.
    }

    @IBAction func sendMessageButtonPressed(sender: AnyObject) {
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        nameLabel.text = "To :" + enterNameTextField.text
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        
        sendButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }
    
}

