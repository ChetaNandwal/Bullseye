//
//  Games.swift
//  Bulleye
//
//  Created by chetan nandwal on 27/07/22.
//

import Foundation
import SwiftUI

struct Game{
    var target: Int = Int.random(in: 1...100)
    var score: Int = 0
    var round: Int = 1
    
    func points(slidervalue: Int) -> Int{
        let difference: Int = abs(slidervalue - self.target)
    
        let awardedpoints: Int = 100 - difference
        return awardedpoints
    }
}
