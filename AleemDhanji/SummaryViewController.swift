//
//  SummaryViewController.swift
//  AleemDhanji
//
//  Created by Aleem Dhanji on 2015-04-26.
//  Copyright (c) 2015 Aleem Dhanji. All rights reserved.
//

import UIKit

class SummaryViewController: UIViewController {

    @IBOutlet weak var continueLabel: UILabel!
    @IBOutlet weak var shimmeringView: FBShimmeringView!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.continueLabel.alpha = 0

        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(animated: Bool) {
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
