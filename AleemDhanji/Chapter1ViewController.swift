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
    @IBOutlet weak var sliderTrack: UIImageView!
    @IBOutlet weak var destinationPlaceholder: UIImageView!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var shines: UIImageView!
    @IBOutlet weak var brackets: UILabel!
    @IBOutlet weak var continueLabel: UILabel!
    @IBOutlet weak var continueShimmeringView: FBShimmeringView!
    @IBOutlet weak var shimmeringView: FBShimmeringView!

    // MARK: - Variables

    var slideButton: UIImage!
    var initialHiddenGroup: [UIView] = []
    var transitionGroup1: [UIView] = []
    var transitionGroup2: [UIView] = []
    var showOnSlide: [UIView] = []
    var hideOnSlide: [UIView] = []

    // MARK: - View Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        // Hide these first
        initialHiddenGroup = [buildings, buildingsOutline, laptop, sliderTrack, slider, destinationPlaceholder, shines, brackets, continueLabel]
        // First fade in these
        transitionGroup1 = [buildings, buildingsOutline]
        // Then fade in these
        transitionGroup2 = [laptop, sliderTrack, slider, destinationPlaceholder]
        // Show these when slider reaches destination
        showOnSlide = [shines, brackets]
        // Hide these when slider reaches destination
        hideOnSlide = [buildingsOutline, sliderTrack, slider, destinationPlaceholder]

        // Allow tint color to be changed in Interface Builder
        buildings.image = buildings.image!.imageWithRenderingMode(UIImageRenderingMode.AlwaysTemplate)
        laptop.image = laptop.image!.imageWithRenderingMode(UIImageRenderingMode.AlwaysTemplate)

        let trackColor = UIColor(red: 41/255, green: 41/255, blue: 41/255, alpha: 1)
        slider.minimumTrackTintColor = trackColor
        slider.maximumTrackTintColor = trackColor

        slideButton = UIImage(named: "slide-button")
        slider.setThumbImage(slideButton, forState: UIControlState.Normal)
        slider.setThumbImage(slideButton, forState: UIControlState.Highlighted)

        for item in initialHiddenGroup {
            item.alpha = 0
        }
    }

    override func viewDidAppear(animated: Bool) {
        // Fade in Group1
        UIView.animateWithDuration(0.75, delay: 1, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
            for item in self.transitionGroup1 {
                item.alpha = 1
            }
        }, completion: nil)
        // Then fade in Group2
        UIView.animateWithDuration(0.75, delay: 2, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
            for item in self.transitionGroup2 {
                item.alpha = 1
            }
        }, completion: nil)

        shimmeringView.contentView = sliderTrack
        shimmeringView.shimmering = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: UISlider Actions

    @IBAction func didReachDestination() {
        if slider.value == 1 {
            // Switch to green state
            UIView.animateWithDuration(0, delay: 0, options: UIViewAnimationOptions.CurveLinear, animations: { () -> Void in
                for item in self.showOnSlide {
                    item.alpha = 1
                }
                self.laptop.tintColor = UIColor(red: 69/255, green: 219/255, blue: 90/255, alpha: 1)
            }, completion: nil)
            UIView.animateWithDuration(0, delay: 0, options: UIViewAnimationOptions.CurveLinear, animations: { () -> Void in
                for item in self.hideOnSlide {
                    item.alpha = 0
                }
            }, completion: nil)
        }
        UIView.animateWithDuration(1, delay: 2, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
            self.continueShimmeringView.contentView = self.continueLabel
            self.continueShimmeringView.shimmering = true
            self.continueLabel.alpha = 1
        }, completion: nil)
    }


}
