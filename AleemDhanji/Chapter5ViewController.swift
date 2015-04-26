//
//  Chapter5ViewController.swift
//  AleemDhanji
//
//  Created by Aleem Dhanji on 2015-04-25.
//  Copyright (c) 2015 Aleem Dhanji. All rights reserved.
//

import UIKit

class Chapter5ViewController: UIViewController {

    // MARK: - IBOutlets

    @IBOutlet weak var stars: UIImageView!
    @IBOutlet weak var buildings: UIImageView!
    @IBOutlet weak var hotAirBaloon: UIImageView!

    // MARK: - Variables

    var initialHiddenGroup: [UIImageView] = []

    // MARK: - View Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        initialHiddenGroup = [stars, buildings, hotAirBaloon]

        for item in initialHiddenGroup {
            item.alpha = 0
        }

        buildings.image = buildings.image!.imageWithRenderingMode(UIImageRenderingMode.AlwaysTemplate)

        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(1, delay: 1, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
            self.stars.alpha = 1
        }, completion: nil)
        UIView.animateWithDuration(1, delay: 2, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
            self.buildings.alpha = 1
            self.hotAirBaloon.alpha = 1
        }, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
