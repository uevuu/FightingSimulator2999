//
//  FightService.swift
//  FightingSimulator2999
//
//  Created by Teacher on 11.03.2023.
//

import Foundation
import Combine

struct Enemy {
    var health: Int
}

protocol FightService {
    var myHealth: AnyPublisher<Int, Never> { get }
    var enemyHealth: AnyPublisher<Int, Never> { get }
    /// Restores player and enemy health to 100
    func startFight()
    /// Deals 9 damage to enemy. Enemy attacks back and reduces `myHealth` by 10.
    func basicAttack()
    /// Deals 7-15 damage. Enemy attacks back and reduces `myHealth` by 10.
    func magicAttack()
}

class RestFightService: FightService {
    
    static let shared: RestFightService = .init()

    
    private var _myHealth: CurrentValueSubject<Int, Never> = .init(0)
    private var _enemyHealth: CurrentValueSubject<Int, Never> = .init(0)
    
    
    var myHealth: AnyPublisher<Int, Never> {
        return _myHealth.eraseToAnyPublisher()
    }
    var enemyHealth: AnyPublisher<Int, Never> {
        return _enemyHealth.eraseToAnyPublisher()
    }
    
    
    func startFight() {
        _myHealth.value = 100
        _enemyHealth.value = 100
    }
    
    func basicAttack() {
        _enemyHealth.value -= 9
        _enemyHealth.value > 0 ? _myHealth.value -= 10 : nil
    }
    
    func magicAttack() {
        _enemyHealth.value -= Int.random(in: 7...15)
        _enemyHealth.value > 0 ? _myHealth.value -= 10 : nil
    }
    
    
}
