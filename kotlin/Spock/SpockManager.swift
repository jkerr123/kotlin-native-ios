//
//  SpockManager.swift
//  kotlin
//
//  Created by Jamie Kerr on 06/12/2018.
//  Copyright © 2018 Jamie Kerr. All rights reserved.
//

import Foundation
import spock

class SpockManager:NSObject, SpockListener{
    
    var spock: Spock?
    
    var isInitialised = false
    
    override init() {
        spock = nil
    }
    
    func onProductsMatched(matches: [Product]) {
        print("lolol")
    }
    
    func onNoProductsMatched() {
        
    }
    
    func onProductsLoaded() {
        isInitialised = true
    }
    
    func onError() {
        
    }
    
    public func getSpock() -> Spock? {
        if spock == nil {
            spock = Spock(listener: self)
        }
        return spock
    }
}
