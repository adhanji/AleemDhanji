//
//  Chapter1ViewController.swift
//  AleemDhanji
//
//  Created by Aleem Dhanji on 2015-04-25.
//  Copyright (c) 2015 Aleem Dhanji. All rights reserved.
//

import UIKit

class Chapter1ViewController: UIViewController {

    // MARK: - IBOutlets

    @IBOutlet weak var buildings: UIImageView!
    @IBOutlet weak var buildingsOutline: UIImageView!
    @IBOutlet weak var laptop: UIImageView!
    @IBOutlet weak var slider: UIImageView!
    @IBOutlet weak var slideButton: UIImageView!
    @IBOutlet weak var destinationPlaceholder: UIImageView!
    @IBOutlet weak var shines: UIImageView!
    @IBOutlet weak var brackets: UILabel!

    var initialHiddenGroup = [UIView]()
    var transitionGroup1 = [UIView]()
    var transitionGroup2 = [UIView]()

    // MARK: - View Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        initialHiddenGroup = [buildings, buildingsOutline, laptop, slider, slideButton, destinationPlaceholder, shines, brackets]
        transitionGroup1 = [buildings, buildingsOutline]
        transitionGroup2 = [laptop, slider, slideButton, destinationPlaceholder]

        // Allow tint color to be changed in Interface Builder
        buildings.image = buildings.image!.imageWithRenderingMode(UIImageRenderingMode.AlwaysTemplate)
        laptop.image = laptop.image!.imageWithRenderingMode(UIImageRenderingMode.AlwaysTemplate)

        for item in initialHiddenGroup {
            item.alpha = 0
        }
    }

    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(1, delay: 2, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
            for item in self.transitionGroup1 {
                item.alpha = 1
            }
        }, completion: nil)
        UIView.animateWithDuration(1, delay: 3, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
            for item in self.transitionGroup2 {
                item.alpha = 1
            }
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
