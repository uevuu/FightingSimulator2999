import UIKit

class ResultCoordinator {
    
    static let shared: AppCoordinator = .init()
    private let storyboard = UIStoryboard(name: "Main", bundle: nil)
    var fightService: FightService = RestFightService.shared
    
    func start() -> UIViewController {
        let controller: ResultViewController = storyboard.instantiateViewController(identifier: "ResultViewController")
        let presenter = ResultPresenter(view: controller)
        controller.presenter = presenter
        return controller
    }

}
