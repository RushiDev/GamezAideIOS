//
//  AddTeamViewController.swift
//  GamezAide
//
//  Created by Rushi Patel on 4/14/16.
//  Copyright © 2016 Datasoft. All rights reserved.
//

import Foundation

class AddTeamViewController: UIViewController {
    
    @IBOutlet var navButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if self.revealViewController() != nil {
            navButton?.target = self.revealViewController()
            navButton?.action = #selector(SWRevealViewController.revealToggle(_:))
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

