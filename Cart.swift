//
//  Cart.swift
//  
//
//  Created by Christopher Webb-Orenstein on 7/18/16.
//
//

import Foundation

class Cart {
    var items: [Item]
    
    init() {
        self.items = []
    }
    
    func priceInCents() -> Int {
        var total: Int = 0
        for item in self.items {
            total += item.priceInCents
        }
        return total
    }
    
    func addItem(_:Item) {
        self.items.addItem(_)
    }
    
    
    func removeItem(_:Item) {
        sel
    }
    
    func itemsWithName(_:String) -> [Item] {
        
    }
    
    func itemsWithMinimumPriceInCents(_:Int) -> [Item] {
        
    }
    
    func itemsWithMaximumPriceInCents(_:Int) -> [Item] {
        
    }
}

