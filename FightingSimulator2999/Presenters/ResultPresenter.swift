import UIKit

class ResultPresenter {
    
    init(view: ResultViewController) {
        self.view = view
    }
    
    private weak var view: ResultViewController?
    
    func restartGame() {
        ResultCoordinator.shared.restar()
    }
}
