import UIKit
import Combine

class FightPresenter {
    
    init(view: FightView, fightService: FightService) {
        self.view = view
        self.fightService = fightService
    }
    
    private weak var view: FightView?
    var fightService: FightService
    
    func startGame() {
        print("game starting")
        fightService.startFight()
    }
    
    func basicAttackTapped(completion: @escaping(Float, Float) -> (Void)) {
        fightService.basicAttack()
        _ = Publishers.Zip(fightService.myHealth, fightService.enemyHealth).sink { myHeath, enemyHeath in
            completion(Float(myHeath)/100, Float(enemyHeath)/100)
            if myHeath <= 0 || enemyHeath <= 0 {
                if myHeath <= 0 {
                    AppCoordinator.shared.showGameResult(status: .lose)
                } else {
                    AppCoordinator.shared.showGameResult(status: .win)
                }
            }
        }
    }
    
    func magicAttackTaped(completion: @escaping(Float, Float) -> (Void)) {
        fightService.magicAttack()
        _ = Publishers.Zip(fightService.myHealth, fightService.enemyHealth).sink { myHeath, enemyHeath in
            completion(Float(myHeath)/100, Float(enemyHeath)/100)
            if myHeath <= 0 || enemyHeath <= 0 {
                if myHeath <= 0 {
                    AppCoordinator.shared.showGameResult(status: .lose)
                } else {
                    AppCoordinator.shared.showGameResult(status: .win)
                }
            }
        }
    }
}
