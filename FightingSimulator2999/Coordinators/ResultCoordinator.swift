import UIKit

class ResultCoordinator {
    
    static let shared: ResultCoordinator = .init()
    private let storyboard = UIStoryboard(name: "Main", bundle: nil)
    var fightService: FightService = RestFightService.shared
    
    func start(status: GameResult) -> UIViewController {
        let controller: ResultViewController = storyboard.instantiateViewController(identifier: "ResultViewController")
        controller.result = status
        let presenter = ResultPresenter(view: controller)
        controller.presenter = presenter
        return controller
    }
    
    func restar() {
        AppCoordinator.shared.start()
    }

}
