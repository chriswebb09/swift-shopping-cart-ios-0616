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
    
    func addItem(item:Item) {
        self.items.append(item)
    }
    
    
    func removeItem(item: Item) {
        if let itemIndex = self.items.indexOf(item) {
            self.items.removeAtIndex(itemIndex)
        }
    }
    
    func itemsWithName(name:String) -> [Item] {
        var returnArray: [Item] = []
        for item in self.items {
            if item.name == name {
                returnArray.append(item)
            }
        }
        return returnArray
    }
    
    func totalPriceInCents() -> Int {
        var total = 0
        for item in self.items {
            total += item.priceInCents
        }
        return total
    }
    
    func itemsWithMinimumPriceInCents(price:Int) -> [Item] {
        var itemArray: [Item] = []
        for item in self.items {
            if item.priceInCents >= price {
                itemArray.append(item)
            }
        }
        return itemArray
        
    }
    
    func itemsWithMaximumPriceInCents(price:Int) -> [Item] {
        var itemArray: [Item] = []
        for item in self.items {
            if item.priceInCents <= price {
                itemArray.append(item)
            }
        }
        return itemArray
    }
}

