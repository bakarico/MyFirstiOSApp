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
    @IBOutlet weak var backgroupImageView: UIImageView!
    @IBOutlet weak var copyrightLable: UILabel!
    
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
        self.helloWorldLabel.backgroundColor = UIColor(white: 1, alpha: 0.8)
        self.copyrightLable.backgroundColor = UIColor(white: 1, alpha: 0.8)
       
        var randomNumberString = String(format: "girl%i", arc4random_uniform(2) + 1)
        // var randomNumberString:String = String(format: "girl%i", arc4random_uniform(2) + 1)
        
        self.backgroupImageView.image = UIImage(named: randomNumberString)
        
    }

}

