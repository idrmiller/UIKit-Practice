//
//  ViewController.swift
//  Click Counter
//
//  Created by David Miller on 1/8/16.
//  Copyright © 2016 LM Labs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var label:UILabel!
    var labelTwo:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        //Label - 1
        let label = UILabel()
        label.frame = CGRectMake(150, 200, 60, 60)
        label.text = "0"
        self.view.addSubview(label)
        self.label = label
        
        //Label - 2
        let labelTwo = UILabel()
        labelTwo.frame = CGRectMake(240, 200, 60, 60)
        labelTwo.text = "0"
        self.view.addSubview(labelTwo)
        self.labelTwo = labelTwo
        
        
        //Button - 1
        let button = UIButton()
        button.frame = CGRectMake(100, 250, 100, 60)
        button.setTitle("Increase", forState: .Normal)
        button.setTitleColor(UIColor.blackColor(), forState: .Normal)
        self.view.addSubview(button)
        
        button.addTarget(self, action: "incrementCount", forControlEvents: UIControlEvents.TouchUpInside)
        
        
        //Button - 2
        let buttonTwo = UIButton()
        buttonTwo.frame = CGRectMake(200, 250, 100, 60)
        buttonTwo.setTitle("Decrease", forState: .Normal)
        buttonTwo.setTitleColor(UIColor.blackColor(), forState: .Normal)
        self.view.addSubview(buttonTwo)
        
        buttonTwo.addTarget(self, action: "decrementCount", forControlEvents: UIControlEvents.TouchUpInside)
        
        //DONE: Add an additional label and have it increment with the first
        //DONE: Add a decrement button
        //DONE: Add an action that toggles the background color of the view with each click
        
        
        
        
    }
    
    func incrementCount() {
        self.count++
        self.label.text = "\(self.count)"
        self.labelTwo.text = "\(self.count)"
        if (self.count%2 == 0){
            self.view.backgroundColor = UIColor.blueColor()
        } else {
            self.view.backgroundColor = UIColor.whiteColor()
        }
        
        
    }
    
    func decrementCount() {
        self.count--
        self.label.text = "\(self.count)"
        self.labelTwo.text = "\(self.count)"
        if (self.count%2 != 0){
            self.view.backgroundColor = UIColor.redColor()
        } else {
            self.view.backgroundColor = UIColor.whiteColor()
        }
    }


}

