//
//  ViewController.swift
//  calculate1
//
//  Created by s20171103187 on 2018/10/27.
//  Copyright © 2018 s20171103187. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    var temp1:Double=0
    @IBOutlet weak var result: UITextField!
    @IBAction func zero(_ sender: Any) {
        result.text = result.text! + "0"
    }
    @IBAction func one(_ sender: Any) {
        result.text = result.text! + "1"
    }
    @IBAction func two(_ sender: Any) {
        result.text = result.text! + "2"
    }
    @IBAction func three(_ sender: Any) {
        result.text = result.text! + "3"
    }
    @IBAction func four(_ sender: Any) {
        result.text = result.text! + "4"
    }
    @IBAction func five(_ sender: Any) {
        result.text = result.text! + "5"
    }
    @IBAction func six(_ sender: Any) {
        result.text = result.text! + "6"
    }
    @IBAction func seven(_ sender: Any) {
        result.text = result.text! + "7"
    }
    @IBAction func eight(_ sender: Any) {
        result.text = result.text! + "8"
    }
    @IBAction func nine(_ sender: Any) {
        result.text = result.text! + "9"
    }
    @IBAction func plus(_ sender: Any) {
        temp1 = Double(result.text!)!
        result.text = ""
    }
    @IBAction func subtract(_ sender: Any) {
    }
    @IBAction func multiply(_ sender: Any) {
    }
    @IBAction func divide(_ sender: Any) {
    }
    @IBAction func equal(_ sender: Any) {
        temp1 = temp1 + Double(result.text!)!
        result.text = "\(temp1)"
    }
    @IBAction func Delete(_ sender: Any) {
    }
    @IBAction func none(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

