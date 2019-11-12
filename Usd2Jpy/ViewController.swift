//
//  ViewController.swift
//  Usd2Jpy
//
//  Created by 深瀬貴将 on 2019/09/26.
//  Copyright © 2019 fukase. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBOutlet weak var jpyField: UITextField!
    @IBOutlet weak var thbField: UITextField!
    @IBOutlet weak var vndField: UITextField!
    @IBOutlet weak var rmField: UITextField!
    @IBAction func jpyCloseTextForm(_ sender: Any) {
    }
    @IBAction func thbCloseTextForm(_ sender: Any) {
    }
    @IBAction func vndCloseTextForm(_ sender: Any) {
    }
    
    @IBAction func rmCloseTextForm(_ sender: Any) {
    }
    
    
    
    
    
    @IBAction func resetButton(_ sender: Any) {
        jpyField.text = ""
        thbField.text = ""
        vndField.text = ""
        rmField.text = ""
    }
    
    
    @IBAction func exchangeButton(_ sender: Any) {
        
        if jpyField.text == "" {
            jpyField.text = String(0)
        }
        if thbField.text == "" {
            thbField.text = String(0)
        }
        if vndField.text == "" {
            vndField.text = String(0)
        }
        if rmField.text == "" {
            rmField.text = String(0)
        }
        
        var toJpy:Double = 0
        if Double(jpyField.text!)! > 0 {
            toJpy = Double(jpyField.text!)!
            
        }else if Double(thbField.text!)! > 0 {
            toJpy = Double(thbField.text!)! * 3.5
        }else if Double(vndField.text!)! > 0 {
            toJpy = Double(vndField.text!)! * 0.004
        }else {
            toJpy = Double(rmField.text!)! * 25
        }
        
        if Double(jpyField.text!)! == 0 {
            jpyField.text = String(format: "%.1f", toJpy)
        }
        if Double(thbField.text!)! == 0 {
            thbField.text = String(format: "%.1f", toJpy / 3.5)
        }
        if Double(vndField.text!)! == 0 {
            vndField.text = String(format: "%.1f", toJpy / 0.004)
        }
        if Double(rmField.text!)! == 0 {
            rmField.text = String(format: "%.1f", toJpy / 25)
        }

    }
    
        override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            self.view.endEditing(true)
        }
    
    
    
}

