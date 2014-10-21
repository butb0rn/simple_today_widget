//
//  TodayViewController.swift
//  TodayWidget
//
//  Created by Ehsan Valizadeh on 10/21/14.
//  Copyright (c) 2014 Ehsan_Valizadeh. All rights reserved.
//

import UIKit
import NotificationCenter

class TodayViewController: UIViewController, NCWidgetProviding {
        
    @IBOutlet weak var widgetLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view from its nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func widgetPerformUpdateWithCompletionHandler(completionHandler: ((NCUpdateResult) -> Void)!) {
        
        let sharedDefaults = NSUserDefaults(suiteName: "group.butb0rn.TodayExtensionSharingDefaults")
        self.widgetLabel.text = sharedDefaults.objectForKey("stringKey") as? String

        completionHandler(NCUpdateResult.NewData)
    }
    
}
