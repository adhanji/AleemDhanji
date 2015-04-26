//
//  Chapter3ViewController.swift
//  AleemDhanji
//
//  Created by Aleem Dhanji on 2015-04-25.
//  Copyright (c) 2015 Aleem Dhanji. All rights reserved.
//

import UIKit
import AVFoundation

class Chapter3ViewController: UIViewController {

    // MARK: - IBOutlets

    @IBOutlet weak var crystalBallBackground: UIImageView!
    @IBOutlet weak var predictionLabel: UILabel!

    // MARK: - Variables

    let crystalBall: CrystalBall = CrystalBall()
    let animationImages: [UIImage] = [
        UIImage(named: "CB00001")!,
        UIImage(named: "CB00002")!,
        UIImage(named: "CB00003")!,
        UIImage(named: "CB00004")!,
        UIImage(named: "CB00005")!,
        UIImage(named: "CB00006")!,
        UIImage(named: "CB00007")!,
        UIImage(named: "CB00008")!,
        UIImage(named: "CB00009")!,
        UIImage(named: "CB00010")!,
        UIImage(named: "CB00011")!,
        UIImage(named: "CB00012")!,
        UIImage(named: "CB00013")!,
        UIImage(named: "CB00014")!,
        UIImage(named: "CB00015")!,
        UIImage(named: "CB00016")!,
        UIImage(named: "CB00017")!,
        UIImage(named: "CB00018")!,
        UIImage(named: "CB00019")!,
        UIImage(named: "CB00020")!,
        UIImage(named: "CB00021")!,
        UIImage(named: "CB00022")!,
        UIImage(named: "CB00023")!,
        UIImage(named: "CB00024")!,
        UIImage(named: "CB00025")!,
        UIImage(named: "CB00026")!,
        UIImage(named: "CB00027")!,
        UIImage(named: "CB00028")!,
        UIImage(named: "CB00029")!,
        UIImage(named: "CB00030")!,
        UIImage(named: "CB00031")!,
        UIImage(named: "CB00032")!,
        UIImage(named: "CB00033")!,
        UIImage(named: "CB00034")!,
        UIImage(named: "CB00035")!,
        UIImage(named: "CB00036")!,
        UIImage(named: "CB00037")!,
        UIImage(named: "CB00038")!,
        UIImage(named: "CB00039")!,
        UIImage(named: "CB00040")!,
        UIImage(named: "CB00041")!,
        UIImage(named: "CB00042")!,
        UIImage(named: "CB00043")!,
        UIImage(named: "CB00044")!,
        UIImage(named: "CB00045")!,
        UIImage(named: "CB00046")!,
        UIImage(named: "CB00047")!,
        UIImage(named: "CB00048")!,
        UIImage(named: "CB00049")!,
        UIImage(named: "CB00050")!,
        UIImage(named: "CB00051")!,
        UIImage(named: "CB00052")!,
        UIImage(named: "CB00053")!,
        UIImage(named: "CB00054")!,
        UIImage(named: "CB00055")!,
        UIImage(named: "CB00056")!,
        UIImage(named: "CB00057")!,
        UIImage(named: "CB00058")!,
        UIImage(named: "CB00059")!,
        UIImage(named: "CB00060")!
    ]
    let soundURL = NSBundle.mainBundle().URLForResource("crystal_ball", withExtension: "mp3")
    var mySound: SystemSoundID = 0

    // MARK: - View Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        AudioServicesCreateSystemSoundID(soundURL, &mySound)

        crystalBallBackground.animationImages = animationImages
        crystalBallBackground.animationDuration = 2.5
        crystalBallBackground.animationRepeatCount = 1
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Motion Events

    override func motionBegan(motion: UIEventSubtype, withEvent event: UIEvent) {
        predictionLabel.text = nil
        predictionLabel.alpha = 0
    }

    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent) {
        if motion == UIEventSubtype.MotionShake {
            makeprediction()
        }
    }

    // MARK: - Touch Events



    // MARK: - Helper Methods

    func makeprediction() {
        AudioServicesPlaySystemSound(mySound)
        crystalBallBackground.startAnimating()
        predictionLabel.text = crystalBall.randomPrediction()

        UIView.animateWithDuration(6, animations: { () -> Void in
            self.predictionLabel.alpha = 1
        })
    }

}
