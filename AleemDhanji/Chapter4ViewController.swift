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

    @IBOutlet weak var heart: UIImageView!
    @IBOutlet weak var callToAction: UIImageView!
    @IBOutlet weak var ring: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        heart.image = heart.image!.imageWithRenderingMode(UIImageRenderingMode.AlwaysTemplate)
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
