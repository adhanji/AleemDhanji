//
//  Chapter4ViewController.swift
//  AleemDhanji
//
//  Created by Aleem Dhanji on 2015-04-25.
//  Copyright (c) 2015 Aleem Dhanji. All rights reserved.
//

import UIKit

class Chapter4ViewController: UIViewController {

    // MARK: - IBOutlets

    @IBOutlet weak var heartInside: UIImageView!
    @IBOutlet weak var heart: UIImageView!
    @IBOutlet weak var callToAction: UIImageView!
    @IBOutlet weak var ring: UIImageView!

    // MARK: - Variables

    var initialHiddenGroup: [UIView] = []
    var numberOfTaps = 0

    override func viewDidLoad() {
        super.viewDidLoad()

//        let tap = UITapGestureRecognizer(target: self, action: "fillPage")
//        tap.numberOfTapsRequired = 1
//        tap.numberOfTouchesRequired = 1
//        heart.addGestureRecognizer(tap)
//        heartInside.addGestureRecognizer(tap)

        initialHiddenGroup = [heartInside, heart, callToAction, ring]

        for item in initialHiddenGroup {
            item.alpha = 0
        }

    }

    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(0.75, delay: 1, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
            for item in self.initialHiddenGroup {
                item.alpha = 1
            }
        }, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Tap Gesture

    func fillPage() {
        println("hi")
    }

}
