//
//  Object.swift
//  CS09
//
//  Created by 이동영 on 04/06/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import Foundation

struct Person: Equatable {
    let name: String
    var age: UInt
    var height: UInt
    var weight: UInt
    let nationality: Country
    
    init(name: String, age: UInt = 0, height: UInt = 182, weight: UInt = 75, nationality: Country = Country(name: "Korea") ) {
        self.name = name
        self.age = age
        self.height = height
        self.weight = weight
        self.nationality = nationality
    }
}
