//
//  HashMap.swift
//  CS09
//
//  Created by 이동영 on 04/06/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import Foundation

class HashMap<Key, Value>: Map {
    var keyTable = Array<Key>()
    var valueTable = Array<Value>()
    
    func put(_ key: Key, _ value: Value) {
        
    }
    
    func get(_ key: Key) -> Value? {
        return nil
    }
    
    func isEmpty() -> Bool {
        return self.size() == 0
    }
    
    func size() -> Int {
        return self.valueTable.count
    }
    
    func keys() -> Array<Key> {
        return self.keyTable
    }
    
    func values() -> Array<Value> {
        return self.valueTable
    }
    
    func containsKey(_ key: Key) -> Bool {
        return true
    }
    func containsValue(_ value: Value) -> Bool {
        return true
    }
    
    func replace(_ key: Key, _ value: Value) {
        ()
    }
    
    func remove(_ key: Key) {
        ()
    }
    
    func clear() {
        self.keyTable.removeAll()
        self.valueTable.removeAll()
    }
    
}
