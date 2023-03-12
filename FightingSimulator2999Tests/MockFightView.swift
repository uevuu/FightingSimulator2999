
import Foundation
@testable import FightingSimulator2999

class MockFightView: FightView {
    
    func startGmae() {
        gameStart = true
    }
    func basicAttackTap() {
        myHpIsChanged = true
        enemyHpIsChanged = true
    }
    
    func magicAttackTap() {
        myHpIsChanged = true
        enemyHpIsChanged = true
    }
    
    var myHpIsChanged: Bool = false
    var enemyHpIsChanged: Bool = false
    var gameStart: Bool = false
}
