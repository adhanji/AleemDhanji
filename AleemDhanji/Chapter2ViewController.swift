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

    // MARK: - Variables
    var initialHiddenGroup: [UIView] = []

    // MARK: - View Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        initialHiddenGroup = [grass, hotAirBaloon, callToAction]

        for item in initialHiddenGroup {
            item.alpha = 0
        }

    }

    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(1, delay: 2, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
            self.grass.alpha = 1
            self.hotAirBaloon.alpha = 1
            self.callToAction.alpha = 1
        }, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
