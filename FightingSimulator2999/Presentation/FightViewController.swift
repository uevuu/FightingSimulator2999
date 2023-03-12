//
//  ViewController.swift
//  FightingSimulator2999
//
//  Created by Teacher on 11.03.2023.
//

import UIKit

protocol FightView: AnyObject {

    func basicAttackTap()
    func magicAttackTap()
}

class FightViewController: UIViewController, FightView {
    
    var presenter: FightPresenter!
    
    @IBOutlet
    private var myHealthView: UIProgressView!

    @IBOutlet
    private var enemyHealthView: UIProgressView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter.startGame()
        myHealthView.progress = 1
        enemyHealthView.progress = 1
    }

    @IBAction
    internal func basicAttackTap() {
        presenter.basicAttackTapped { [self] myNewHealth, enemyNewHealth in
            myHealthView.progress = myNewHealth
            enemyHealthView.progress = enemyNewHealth
        }
    }

    @IBAction
    internal func magicAttackTap() {
        presenter.magicAttackTaped { [self] myNewHealth, enemyNewHealth in
            myHealthView.progress = myNewHealth
            enemyHealthView.progress = enemyNewHealth
        }
    }
}

