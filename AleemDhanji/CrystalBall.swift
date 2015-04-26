//
//  CrystalBall.swift
//  AleemDhanji
//
//  Created by Aleem Dhanji on 2015-04-25.
//  Copyright (c) 2015 Aleem Dhanji. All rights reserved.
//

import Foundation

class CrystalBall {

    private let predictions = [
        "It is certain",
        "It is decidedly so",
        "All signs say YES",
        "The stars are not aligned",
        "My reply is no",
        "It is doubtful",
        "Better not tell you now",
        "Concentrate and ask again",
        "Unable to answer now",
        "It is hard to say"
    ]

    func randomPrediction() -> String {
        let randomIndex = arc4random_uniform(UInt32(predictions.count))
        return predictions[Int(randomIndex)]
    }


}