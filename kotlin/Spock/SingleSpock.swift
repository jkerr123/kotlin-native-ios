//
//  SingleSpock.swift
//  kotlin
//
//  Created by Jamie Kerr on 06/12/2018.
//  Copyright © 2018 Jamie Kerr. All rights reserved.
//

import Foundation
import spock

class SingleSpock: SpockListener {
    func onProductsMatched(matches: [Product]) {
        
    }
    
    func onNoProductsMatched() {
        
    }
    
    func onProductsLoaded() {
        
    }
    
    func onError() {
        
    }
    
    var spock: Spock
    
    var spockListener: SpockListenerConcrete
    
    init() {
        spockListener = SpockListenerConcrete()
        spock = Spock(listener: spockListener)
    }
    
    public func getSpock() -> Spock {
        return spock
    }
}
