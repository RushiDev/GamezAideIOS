//
//  TeamViewControllerBySport.swift
//  GamezAide
//
//  Created by Rushi Patel on 4/14/16.
//  Copyright © 2016 Datasoft. All rights reserved.
//

import Foundation

class TeamViewControllerBySport: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    var image = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.imageView.image = self.image

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

