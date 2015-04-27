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
    @IBOutlet weak var continueLabel: UILabel!
    @IBOutlet weak var shimmeringView: FBShimmeringView!

    // MARK: - Variables

    var initialHiddenGroup: [UIView] = []
    var numberOfTaps = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        initialHiddenGroup = [heartInside, heart, continueLabel]

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
        UIView.animateWithDuration(1, delay: 3, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
            self.shimmeringView.contentView = self.continueLabel
            self.shimmeringView.shimmering = true
            self.continueLabel.alpha = 1
        }, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
