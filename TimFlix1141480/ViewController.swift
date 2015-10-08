//
//  ViewController.swift
//  TimFlix1141480
//
//  Created by etudiant on 2015-10-08.
//  Copyright (c) 2015 etudiant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let timer = NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: Selector("tournerLaPage"), userInfo: nil, repeats: false)
    }  // viewDidLoad
    
        func tournerLaPage() {
            performSegueWithIdentifier("listeVideos", sender:self)
        } // tournerLaPage
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

