//
//  ChapterTitleViewController.swift
//  AleemDhanji
//
//  Created by Aleem Dhanji on 2015-04-23.
//  Copyright (c) 2015 Aleem Dhanji. All rights reserved.
//

import UIKit

class ChapterTitleViewController: UIViewController {

    // MARK - IBOutlets

    @IBOutlet weak var continueLabel: UILabel!
    @IBOutlet weak var shimmeringView: FBShimmeringView!

    override func viewDidLoad() {
        super.viewDidLoad()

        shimmeringView.contentView = continueLabel
        shimmeringView.shimmering = true
        continueLabel.alpha = 0
    }

    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(1, delay: 1, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
            self.continueLabel.alpha = 1
        }, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
