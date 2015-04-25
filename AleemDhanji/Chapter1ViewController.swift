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

    // MARK: - View Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        buildings.image = buildings.image!.imageWithRenderingMode(UIImageRenderingMode.AlwaysTemplate)
        laptop.image = laptop.image!.imageWithRenderingMode(UIImageRenderingMode.AlwaysTemplate)
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
