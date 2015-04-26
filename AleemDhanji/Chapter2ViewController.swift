//
//  Chapter2ViewController.swift
//  AleemDhanji
//
//  Created by Aleem Dhanji on 2015-04-25.
//  Copyright (c) 2015 Aleem Dhanji. All rights reserved.
//

import UIKit

class Chapter2ViewController: UIViewController {

    // MARK: - IBOutlets

    @IBOutlet weak var grass: UIImageView!
    @IBOutlet weak var hotAirBaloon: UIImageView!
    @IBOutlet weak var callToAction: UIImageView!
    @IBOutlet weak var html: UIView!
    @IBOutlet weak var css: UIView!
    @IBOutlet weak var javascript: UIView!
    @IBOutlet weak var objectiveC: UIView!
    @IBOutlet weak var cPlusPlus: UIView!

    // MARK: - Variables
    var swipes = 0
    var initialHiddenGroup: [UIView] = []
    var skillGroup1: [UIView] = []
    var skillGroup2: [UIView] = []

    // MARK: - View Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        let swipeUp = UISwipeGestureRecognizer(target: self, action: "liftBaloon")
        swipeUp.direction = UISwipeGestureRecognizerDirection.Up
        hotAirBaloon.addGestureRecognizer(swipeUp)

        skillGroup1 = [html, css, javascript]
        skillGroup2 = [cPlusPlus, objectiveC]
        initialHiddenGroup = [grass, hotAirBaloon, callToAction] + skillGroup1 + skillGroup2

        for item in initialHiddenGroup {
            item.alpha = 0
        }

    }

    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(0.75, delay: 1, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
            self.grass.alpha = 1
            self.hotAirBaloon.alpha = 1
            self.callToAction.alpha = 1
        }, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Swipe Gesture

    func liftBaloon() {
        if swipes < 2 {
            // Move hot air baloon and call to action up the screen
            UIView.animateWithDuration(1, delay: 0, options: UIViewAnimationOptions.CurveEaseOut, animations: { () -> Void in
                let indicatorPosition = (self.callToAction.frame.origin.x, self.callToAction.frame.origin.y)
                let baloonPosition = (self.hotAirBaloon.frame.origin.x, self.hotAirBaloon.frame.origin.y)
                self.hotAirBaloon.frame.origin = CGPointMake(baloonPosition.0, baloonPosition.1 - 100)
                self.callToAction.frame.origin = CGPointMake(indicatorPosition.0, indicatorPosition.1 - 100)
                }, completion: nil)
            // Show skill sets once gesture registered
            UIView.animateWithDuration(1, delay: 0, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
                for item in self.swipes == 0 ? self.skillGroup1 : self.skillGroup2 {
                    item.alpha = 1
                }
            }, completion: nil)
            // Hide skill sets after set delay
//            UIView.animateWithDuration(1, delay: 2, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
//                for item in self.swipes == 0 ? self.skillGroup1 : self.skillGroup2 {
//                    item.alpha = 0
//                }
//            }, completion: nil)
            ++self.swipes
        }

    }

}
