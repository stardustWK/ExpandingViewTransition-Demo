//
//  ViewController.swift
//  ButtonScaleTransition
//
//  Created by Tomasz Szulc on 14/05/16.
//  Copyright © 2016 Tomasz Szulc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func doAnimate(sender: UIView) {
        
        let transitionDelegate = ExpandingViewTransition(expandingView: sender,
                                                         expandViewAnimationDuration: 0.4,
                                                         presentVCAnimationDuration: 0.1)
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let vc = storyboard.instantiateViewControllerWithIdentifier("SecondViewController")
        vc.transitioningDelegate = transitionDelegate
        
        self.presentViewController(vc, animated: true, completion: nil)
    }
}

