//
//  MyProxy.swift
//  Patterns_Swiftbook
//
//  Created by Karakhanyan Tigran on 05.04.2022.
//

import Foundation

protocol MyServerProtocol {
    func grantAccess(user: User)
}

class MyServerSide: MyServerProtocol {
    func grantAccess(user: User) {
        print("access granted to user with id \(user.name)")
    }
}

class MyServerProxy: MyServerProtocol {
    
    private var server: MyServerSide!
    
    func grantAccess(user: User) {
        guard server != nil else { return }
        server.grantAccess(user: user)
    }
    
    func authenticate(user: User) {
        guard user.password == "123" else { return }
        server = MyServerSide()
    }
}
