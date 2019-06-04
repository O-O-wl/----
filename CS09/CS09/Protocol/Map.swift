//
//  Map.swift
//  CS09
//
//  Created by 이동영 on 04/06/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import Foundation

protocol Map {
    associatedtype Key
    associatedtype Value
    
    func put(_ key: Key, _ value: Value)
    func get(_ key: Key) -> Value?
    
    func isEmpty() -> Bool
    func size() -> Int
    
    func keys() -> Array<Key>
    func values() -> Array<Value>
    
    func containsKey(_ key: Key) -> Bool
    func containsValue(_ value: Value) -> Bool
    
    func replace(_ key: Key, _ value: Value)
    func remove(_ key: Key)
    func clear()
}
