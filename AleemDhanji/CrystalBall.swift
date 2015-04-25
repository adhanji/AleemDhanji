//
//  CrystalBall.swift
//  AleemDhanji
//
//  Created by Aleem Dhanji on 2015-04-25.
//  Copyright (c) 2015 Aleem Dhanji. All rights reserved.
//

import Foundation

class CrystalBall {

    private let predictions = ["I doubt it!", "Why not eh?", "Don't get your hopes up", "All signs say yes!"]

    func randomPrediction() -> String {
        let randomIndex = arc4random_uniform(UInt32(predictions.count))
        return predictions[Int(randomIndex)]
    }


}