//
//  ChapterTitleViewController.swift
//  AleemDhanji
//
//  Created by Aleem Dhanji on 2015-04-23.
//  Copyright (c) 2015 Aleem Dhanji. All rights reserved.
//

import UIKit

class ChapterTitleViewController: UIViewController {

    // MARK - Variables
    let chapterTitle: Int = 0
    @IBOutlet weak var openQuote: UILabel!
    @IBOutlet weak var closeQuote: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        let quoteColor = UIColor(rgba: "#282828")

        openQuote.font = UIFont.fontAwesomeOfSize(115)
        openQuote.text = String.fontAwesomeIconWithName(FontAwesome.QuoteLeft)
        openQuote.textColor = quoteColor
        closeQuote.font = UIFont.fontAwesomeOfSize(115)
        closeQuote.text = String.fontAwesomeIconWithName(FontAwesome.QuoteRight)
        closeQuote.textColor = quoteColor

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
