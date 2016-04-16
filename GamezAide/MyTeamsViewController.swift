//
//  MyTeamsViewController.swift
//  GamezAide
//
//  Created by Rushi Patel on 4/14/16.
//  Copyright © 2016 Datasoft. All rights reserved.
//

import Foundation

class MyTeamsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
   
    @IBOutlet var navButton: UIBarButtonItem!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let sports = ["Soccer", "Football", "Tennis"]
    let sportsImageArray = [UIImage(named: "Soccer_Ball"), UIImage(named: "Football"), UIImage(named: "Tennis_Ball")]

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
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.sports.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! CollectionViewCell
        
        cell.imageView?.image = self.sportsImageArray[indexPath.row]
        
        cell.titleLabel?.text = self.sports[indexPath.row]
        
        return cell
        
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("showTeams", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showTeams" {
            let indexPaths = self.collectionView!.indexPathsForSelectedItems()!
            let indexPath = indexPaths[0] as NSIndexPath
            let vc = segue.destinationViewController as! TeamViewControllerBySport
            vc.image = self.sportsImageArray[indexPath.row]!
            vc.title = self.sports[indexPath.row]
        }
    }
    
}

