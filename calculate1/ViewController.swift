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
    var operatorflug:Double=0
    var temp2:String=""
    var temp3:String=""
    var temp4:String=""
    var temp5:Double=0
    var temp6:Double=0
    var temp7:Double=0
    @IBOutlet weak var result: UITextField!
    @IBOutlet weak var history: UITextField!
    @IBOutlet weak var history2: UITextField!
    @IBAction func point(_ sender: Any) {
        if(result.text == "0")
        {
            result.text = ""
        }
        result.text = result.text! + "."
    
    }
    @IBAction func zero(_ sender: Any) {
        if(result.text == "0")
        {
            result.text = ""
        }
        result.text = result.text! + "0"
    }
    @IBAction func one(_ sender: Any) {
        if(result.text == "0")
        {
            result.text = ""
        }
        result.text = result.text! + "1"
    }
    @IBAction func two(_ sender: Any) {
        if(result.text == "0")
        {
            result.text = ""
        }
        result.text = result.text! + "2"
    }
    @IBAction func three(_ sender: Any) {
        if(result.text == "0")
        {
            result.text = ""
        }
        result.text = result.text! + "3"
    }
    @IBAction func four(_ sender: Any) {
        if(result.text == "0")
        {
            result.text = ""
        }
        result.text = result.text! + "4"
    }
    @IBAction func five(_ sender: Any) {
        if(result.text == "0")
        {
            result.text = ""
        }
        result.text = result.text! + "5"
    }
    @IBAction func six(_ sender: Any) {
        if(result.text == "0")
        {
            result.text = ""
        }
        result.text = result.text! + "6"
    }
    @IBAction func seven(_ sender: Any) {
        if(result.text == "0")
        {
            result.text = ""
        }
        result.text = result.text! + "7"
    }
    @IBAction func eight(_ sender: Any) {
        if(result.text == "0")
        {
            result.text = ""
        }
        result.text = result.text! + "8"
    }
    @IBAction func nine(_ sender: Any) {
        if(result.text == "0")
        {
            result.text = ""
        }
        result.text = result.text! + "9"
    }
    @IBAction func plus(_ sender: Any) {
        
        if(operatorflug == 2)
        {
            result.text = "\(temp1)"
        }
        if(operatorflug == 3)
        {
            result.text = "\(temp1)"
        }
        if(operatorflug == 4)
        {
            result.text = "\(temp1)"
        }
        if(operatorflug == 1)
        {
            if(result.text == "")
            {
                result.text = "0"
            }
            temp1 = temp1 + Double(result.text!)!
            result.text=""
        }
        else
        {
        temp1 = Double(result.text!)!
        result.text = ""
        }
        
        operatorflug = 1
    }
    @IBAction func subtract(_ sender: Any) {
        
        if(operatorflug == 1)
        {
        
            result.text = "\(temp1)"
        }
        if(operatorflug == 3)
        {
            result.text = "\(temp1)"
        }
        if(operatorflug == 4)
        {
            result.text = "\(temp1)"
        }
        if(operatorflug == 2)
        {
            if(result.text == "")
            {
                result.text = "0"
            }
            temp1 = temp1 - Double(result.text!)!
            result.text=""
        }
        else
        {
        temp1 = Double(result.text!)!
        result.text = ""
        operatorflug = 2
        }
        
    }
    @IBAction func multiply(_ sender: Any) {
        if(operatorflug == 1)
        {
            result.text = "\(temp1)"
        }
        if(operatorflug == 2)
        {
            result.text = "\(temp1)"
        }
        if(operatorflug == 4)
        {
            result.text = "\(temp1)"
        }
        if(operatorflug == 3)
        {
            if(result.text == "")
            {
                result.text = "1"
            }
            temp1 = temp1 * Double(result.text!)!
            result.text=""
        }
        else
        {
        temp1 = Double(result.text!)!
        result.text = ""
        operatorflug = 3
        }
    }
    @IBAction func divide(_ sender: Any) {
        if(operatorflug == 1)
        {
            result.text = "\(temp1)"
        }
        if(operatorflug == 2)
        {
            result.text = "\(temp1)"
        }
        if(operatorflug == 3)
        {
            result.text = "\(temp1)"
        }
        if(operatorflug == 4)
        {
            if(result.text == "")
            {
                result.text = "1"
            }
            temp1 = temp1 / Double(result.text!)!
            result.text=""
        }
        else
        {
        temp1 = Double(result.text!)!
        result.text = ""
        operatorflug = 4
        }
    }
    @IBAction func equal(_ sender: Any) {
        if(operatorflug == 1)
        {
            history2.text =  "\(temp1)" + "➕" + result.text!
            temp1 = temp1 + Double(result.text!)!
            result.text = "\(temp1)"
            
        }
        if(operatorflug == 2)
        {
            history2.text =  "\(temp1)" + "➖" + result.text!
            temp1 = temp1 - Double(result.text!)!
            result.text = "\(temp1)"
            
        }
        if(operatorflug == 3)
        {
            history2.text =  "\(temp1)" + "✖️" + result.text!
            temp1 = temp1 * Double(result.text!)!
            result.text = "\(temp1)"
        }
        if(operatorflug == 4)
        {
            history2.text =  "\(temp1)" + "➗" + result.text!
            temp1 = temp1 / Double(result.text!)!
            result.text = "\(temp1)"
        }
        temp3 = result.text!
        operatorflug = 0
    }
    @IBAction func Delete(_ sender: Any) {
        if(result.text != "")
        {
            temp2 = result.text!
            temp2.remove(at: temp2.index(before:temp2.endIndex ))
            result.text = temp2
        }
        else
        {
            result.text = ""
        }
        if(result.text == "")
        {
            result.text = "0"
            
        }
        operatorflug = 0
    }
    @IBAction func none(_ sender: Any) {
        if(result.text == "0")
        {
            history.text="0"
            history2.text="0"
        }
        else{
        result.text=""
        if(result.text == "")
        {
            result.text = "0"
            history.text = temp3
        }
        }
       operatorflug = 0
        
    }
    @IBAction func against(_ sender: Any) {
        temp5 = 0 - Double(result.text!)!
        result.text = "\(temp5)"
        
    }
    
    @IBAction func sign(_ sender: Any) {
        temp6 = sqrt(Double(result.text!)!)
        result.text = "\(temp6)"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

