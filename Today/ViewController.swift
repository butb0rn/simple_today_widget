//
//  ViewController.swift
//  Today
//
//  Created by Ehsan Valizadeh on 10/21/14.
//  Copyright (c) 2014 Ehsan_Valizadeh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let sharedDefaults = NSUserDefaults(suiteName: "group.butb0rn.TodayExtensionSharingDefaults")
        sharedDefaults.setObject("Have a great day :D", forKey: "stringKey")
        sharedDefaults.synchronize()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

