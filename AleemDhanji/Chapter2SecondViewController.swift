//
//  Chapter2SecondViewController.swift
//  AleemDhanji
//
//  Created by Aleem Dhanji on 2015-04-26.
//  Copyright (c) 2015 Aleem Dhanji. All rights reserved.
//

import UIKit

class Chapter2SecondViewController: UIViewController {

    @IBOutlet weak var continueLabel: UILabel!
    @IBOutlet weak var shimmeringView: FBShimmeringView!

    override func viewDidLoad() {
        super.viewDidLoad()

        continueLabel.alpha = 0

        // Do any additional setup after loading the view.
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
