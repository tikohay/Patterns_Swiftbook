//
//  ViewController.swift
//  Patterns_Swiftbook
//
//  Created by Karakhanyan Tigran on 20.03.2022.
//

import UIKit

class ViewController: UIViewController {

    //    Observer
//    let teacher = Teacher()
//    let pupil = Pupil()
//    let pupil2 = Pupil()
//    let pupil3 = Pupil1()
    
//    Decorator
//    var porcsheBoxter: Porsche = Boxter()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //    Observer
//        teacher.add(observer: pupil)
//        teacher.add(observer: pupil2)
//        teacher.add(observer: pupil3)
//        teacher.add(observer: pupil2)
//        teacher.homeTask = "задача №3 на странице 21"
//        print(pupil.homeTask)
        
        
//        Decorator
//        var porcsheBoxter: Porsche = Boxter()
//        porcsheBoxter = PremiumAudioSystem(dp: porcsheBoxter)
//        print(porcsheBoxter.getPrice())
//        porcsheBoxter = PanoramicSunroof(dp: porcsheBoxter)
//        print(porcsheBoxter.getPrice())
        
        
//        SimpleFactory
//        let hugeCar = CarFactory.produceCar(type: .huge)
        
//        Factory Method
        
//        let carFactory = CarFactory2()
//        let car = carFactory.produce()
//
//        let truckFactory = TruckFactory()
//        let truck = truckFactory.produce()
        
//        Abstract Factory
        
//        let littleFactory = LittleSizeFactory()
//        littleFactory.produceCar()
//
//        let middleFactory = MiddleSizeFactory()
//        middleFactory.produceBus()
        
//        Command
        
        let account = Account(accountName: "Akulov Ivan", balance: 1000)
        let transactionManager = TransactionManager.shared
        transactionManager.addTransactions(command: Deposit(account: account, amount: 100))
        transactionManager.addTransactions(command: Withdraw(account: account, amount: 100))
        print(transactionManager.pendingTransactions)
        print(account.balance)
        transactionManager.processingTransactions()
        account.balance
    }
}
