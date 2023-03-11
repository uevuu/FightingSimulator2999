import UIKit
import Combine

class FightPresenter {
    
    init(view: FightViewController) {
        self.view = view
        self.fightService = RestFightService.shared
    }
    
    private weak var view: FightViewController?
    var fightService: FightService
    
    func startGame() {
        fightService.startFight()
    }
    
    func basicAttackTapped(completion: @escaping(Float, Float) -> (Void)) {
        fightService.basicAttack()
        let subscription = Publishers.Zip(fightService.myHealth, fightService.enemyHealth).sink { myHeath, enemyHeath in
            completion(Float(myHeath)/100, Float(enemyHeath)/100)
        }
    }
    
    func magicAttackTaped(completion: @escaping(Float, Float) -> (Void)) {
        fightService.magicAttack()
        let subscription = Publishers.Zip(fightService.myHealth, fightService.enemyHealth).sink { myHeath, enemyHeath in
            completion(Float(myHeath)/100, Float(enemyHeath)/100)
            myHeath < 0 ? ap
        }
    }
}
