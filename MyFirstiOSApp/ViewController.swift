//
//  ViewController.swift
//  MyFirstiOSApp
//
//  Created by Rico on 15/2/21.
//  Copyright (c) 2015年 Rico. All rights reserved.
//
import Foundation
import UIKit
import Alamofire

class ViewController: UIViewController {

    @IBOutlet weak var helloWorldLabel: UILabel!
    @IBOutlet weak var clickMeButton: UIButton!
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var copyrightLable: UILabel!
    
    var backgroundImageFlag = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.helloWorldLabel.text = "Are you hungry?"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func clickMeButtonTapped(sender: UIButton) {
        // Playground - noun: a place where people can play
        
        self.helloWorldLabel.text = "loading ..."
        
        // learn Alamofire
        Alamofire
            .request(.GET, "https://bakarico.github.io")
            .responseString { (request, response, data, error) in
                if error != nil {
                    println(error)
                } else {
                    var alert = UIAlertView()
                    
                    var error: NSError?
                    var regex = NSRegularExpression(pattern: ".*<small>(.*?)</small>.*", options: .DotMatchesLineSeparators, error: &error)
                    
                    let response = NSString(string: data!)
                    let range = NSRange(location: 0, length: response.length)
                    let result = regex?.stringByReplacingMatchesInString(response, options: nil,
                                                                          range: range, withTemplate: "$1")
                    if result != nil {
                        alert.message = String(result!)
                    } else {
                        alert.message = "Failed to get moto"
                    }
                    
                    alert.title = "HTML Response"
                    alert.addButtonWithTitle("OK")
                    alert.show()
                    self.helloWorldLabel.text = String(result!)
                }
            }

        //self.helloWorldLabel.text = "I am not hungry."
        self.helloWorldLabel.backgroundColor = UIColor(white: 1, alpha: 0.8)
        self.copyrightLable.backgroundColor = UIColor(white: 1, alpha: 0.8)
        
        if !self.backgroundImageFlag {
            self.backgroundImageView.image = UIImage(named: "girl1")
            self.backgroundImageFlag = true
        } else {
            self.backgroundImageView.image = UIImage(named: "girl2")
            self.backgroundImageFlag = false
        }

        
    }

}

