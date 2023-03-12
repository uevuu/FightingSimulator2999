//
//  FightingSimulator2999Tests.swift
//  FightingSimulator2999Tests
//
//  Created by Teacher on 11.03.2023.
//

import XCTest
@testable import FightingSimulator2999

final class FightingSimulator2999Tests: XCTestCase {
    
    override func setUp() {
        fightService = MockFightService()
        fightView = MockFightView()
        presenter = FightPresenter(view: fightView, fightService: fightService)
        }

        var fightService: MockFightService!
        var fightView: MockFightView!
        var presenter: FightPresenter!
    
    func testHPChanged() throws {
        presenter.startGame()
        XCTAssertTrue(fightService.startFightCalled)
    }
}
