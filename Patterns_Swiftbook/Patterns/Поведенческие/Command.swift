//
//  Command.swift
//  Patterns_Swiftbook
//
//  Created by Karakhanyan Tigran on 21.03.2022.
//

import Foundation
import UIKit

protocol Command {
    func execute()
    var isComplete: Bool { get set }
}

class Account {
    
    var accountName: String
    var balance: Int
    
    init(accountName: String, balance: Int) {
        self.accountName = accountName
        self.balance = balance
    }
}

class Deposit: Command {
    
    private var _account: Account
    private var _amount: Int
    var isComplete: Bool = false
    
    init(account: Account, amount: Int) {
        self._account = account
        self._amount = amount
    }
    
    func execute() {
        _account.balance += _amount
        isComplete = true
    }
}

class Withdraw: Command {
    
    private var _account: Account
    private var _amount: Int
    var isComplete: Bool = false
    
    init(account: Account, amount: Int) {
        self._account = account
        self._amount = amount
    }
    
    func execute() {
        if _account.balance >= _amount {
            _account.balance -= _amount
            isComplete = true
        } else {
            print("Not enough money")
        }
    }
}

class TransactionManager {
    
    static let shared = TransactionManager()
    
    private var _transactions: [Command] = []
    
    var pendingTransactions: [Command] {
        get {
            return self._transactions.filter { $0.isComplete == false }
        }
    }
   
    private init() {}
    
    func addTransactions(command: Command) {
        self._transactions.append(command)
    }
    
    func processingTransactions() {
        _transactions.filter { $0.isComplete == false }.forEach { $0.execute() }
    }
}
