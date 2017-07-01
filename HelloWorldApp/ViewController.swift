//
//  ViewController.swift
//  HelloWorldApp
//
//  Created by Dannel Alon on 2017-07-01.
//  Copyright © 2017 Dannel Alon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lblName: UILabel!
    @IBOutlet var txtFname: UITextField!
    @IBOutlet var txtLName: UITextField!
    @IBOutlet var lblFullName: UILabel!
    
    @IBOutlet var btnBack: UIButton!
    @IBOutlet var btnSender: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        lblFullName.isHidden = true;
        btnBack.isHidden = true;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func printUserInfo(_ sender: UIButton) {
        lblName.text = "Welcome,"
        txtLName.isHidden = true;
        txtFname.isHidden = true;
        sender.isHidden = true;
        btnBack.isHidden = false;
        lblFullName.isHidden = false;
        lblFullName.text = "\(txtFname.text!) \(txtLName.text!)";
    }
    
    @IBAction func returnHomePage(_ sender: UIButton) {
        lblName.text = "Enter your name:";
        txtLName.text = "";
        txtLName.isHidden = false;
        txtFname.text = "";
        txtFname.isHidden = false;
        sender.isHidden = true;
        lblFullName.isHidden = true;
        lblFullName.text = "";
        btnSender.isHidden = false;
    }
    
}

