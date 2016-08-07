//
//  ViewController.swift
//  FABbutton
//
//  Created by Vijay on 07/08/16.
//  Copyright © 2016 Vijay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var actionButton: ActionButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let twitterImage = UIImage(named: "twitter_icon.png")!
        let plusImage = UIImage(named: "googleplus_icon.png")!
        
        let twitter = ActionButtonItem(title: "Twitter", image: twitterImage)
        twitter.action = { item in print("Twitter...") }
        
        let google = ActionButtonItem(title: "Google Plus", image: plusImage)
        google.action = {
            item in print("google")}
        
        actionButton = ActionButton(attachedToView: self.view, items: [twitter, google])
        actionButton.action = { button in button.toggleMenu() }
        actionButton.setTitle("+", forState: .Normal)
        
        actionButton.backgroundColor = UIColor(red: 238.0/255.0, green: 130.0/255.0, blue: 34.0/255.0, alpha:1.0)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

