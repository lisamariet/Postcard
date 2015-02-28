//
//  ViewController.swift
//  Postcard
//
//  Created by Lisa-Marie on 13.02.15.
//  Copyright (c) 2015 Lisa-Marie Thompson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblMessage: UILabel!
    @IBOutlet weak var txtEnterName: UITextField!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var txtEnterMessage: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnSendMailPressed(sender: UIButton) {
        //sender.backgroundColor = UIColor.redColor()

        //sender.setTitle("Mail Sent", forState: UIControlState.Normal)
        sender.setTitle("Sent", forState: .Normal)
        
        lblMessage.text = txtEnterMessage.text
        lblMessage.hidden = false
        lblMessage.textColor = UIColor.redColor()
        
        lblName.text = txtEnterName.text
        lblName.hidden = false
        lblName.textColor = UIColor.blueColor()
        
        txtEnterName.text = ""
        txtEnterMessage.text = ""
        txtEnterMessage.resignFirstResponder()
        txtEnterName.resignFirstResponder()
        
    }

}

