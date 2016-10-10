//
//  ViewController.swift
//  Click Counter
//
//  Created by Rob Sutherland on 2016-09-23.
//  Copyright © 2016 HP Software. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count = 0
    @IBOutlet var label:UILabel!
    
    var countDec = 0
    var labelDec:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        
//        
//        //label code
//        let label = UILabel()
//        label.frame = CGRect(x: 150, y: 150, width: 60, height: 60)
//        label.text="0"
//        
        //label decrement code
        let labelDec = UILabel()
        labelDec.frame = CGRect(x: 150, y: 250, width: 60, height: 60)
        labelDec.text="0"
//
//        self.view.addSubview(label)
//        self.label = label
        self.view.addSubview(labelDec)
        self.labelDec = labelDec
//
//        //button code
//        let button = UIButton()
//        button.frame=CGRect(x: 175, y: 150, width: 150, height: 60)
//        button.setTitle("Click ++", for: .normal)
//        button.setTitleColor(UIColor.blue, for: .normal)
//        self.view.addSubview(button)
//        
//        button.addTarget(self, action: #selector(ViewController.incrementCount), for:UIControlEvents.touchUpInside)
        
        //button decrement code
        let buttonDec = UIButton()
        buttonDec.frame=CGRect(x: 175, y: 250, width: 150, height: 60)
        buttonDec.setTitle("Click --", for: .normal)
        buttonDec.setTitleColor(UIColor.blue, for: .normal)
        self.view.addSubview(buttonDec)
        
        buttonDec.addTarget(self, action: #selector(ViewController.decrementCount), for:UIControlEvents.touchUpInside)
    }
    
    @IBAction func incrementCount(){
        self.count += 1
        self.label.text = "\(self.count)"
       
    }
    
    func decrementCount(){
        self.countDec -= 1
        self.labelDec.text = "\(self.countDec)"
    }

}

