//
//  FightingSimulator2999UITests.swift
//  FightingSimulator2999UITests
//
//  Created by Teacher on 11.03.2023.
//

import XCTest

final class FightingSimulator2999UITests: XCTestCase {
    
    override func setUp() {
           let app = XCUIApplication()
           app.launch()
           self.app = app
       }

       var app: XCUIApplication!
    
    func testExample() throws {
        let basicAttackStaticText = app/*@START_MENU_TOKEN@*/.staticTexts["Basic attack"]/*[[".buttons[\"Basic attack\"].staticTexts[\"Basic attack\"]",".staticTexts[\"Basic attack\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.firstMatch
        basicAttackStaticText.tap()
        basicAttackStaticText.tap()
        basicAttackStaticText.tap()
        basicAttackStaticText.tap()
        basicAttackStaticText.tap()
        basicAttackStaticText.tap()
        basicAttackStaticText.tap()
        basicAttackStaticText.tap()
        basicAttackStaticText.tap()
        basicAttackStaticText.tap()
        let resullLabel = app.staticTexts["You lose!"].firstMatch
        XCTAssertTrue(resullLabel.waitForExistence(timeout: 1))

    }
}
