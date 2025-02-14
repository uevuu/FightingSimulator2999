import UIKit

class AppCoordinator {
    
    weak var window: UIWindow?
    static let shared: AppCoordinator = .init()
    private let storyboard = UIStoryboard(name: "Main", bundle: nil)
    var fightService: FightService = RestFightService.shared
    
    func start() {
        let controller: FightViewController = storyboard.instantiateViewController(identifier: "FightViewController")
        let presenter = FightPresenter(view: controller, fightService: RestFightService())
        controller.presenter = presenter
        window?.rootViewController = controller
    }
    
    func showGameResult(status: GameResult) {
        let resultCoordinator = ResultCoordinator()
        window?.rootViewController = resultCoordinator.start(status: status)

    }
    
    
}
