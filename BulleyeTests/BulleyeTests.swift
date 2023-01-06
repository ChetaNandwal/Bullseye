//
//  BulleyeTests.swift
//  BulleyeTests
//
//  Created by chetan nandwal on 23/07/22.
//

import XCTest
@testable import Bulleye

class BulleyeTests: XCTestCase {
    var game: Game!
    

    override func setUpWithError() throws {
       game = Game()
    }

    override func tearDownWithError() throws {
        game = nil
    }

    func testExample() throws {
        XCTAssertEqual(game.points(slidervalue: 50), 999)
    }


}
