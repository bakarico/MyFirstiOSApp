//
//  ViewController.swift
//  MyFirstiOSApp
//
//  Created by Rico on 15/2/21.
//  Copyright (c) 2015年 Rico. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var helloWorldLabel: UILabel!
    @IBOutlet weak var clickMeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.helloWorldLabel.text = "Are you hungry?"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func clickMeButtonTapped(sender: UIButton) {
        self.helloWorldLabel.text = "I am not hungry."
    }

}

