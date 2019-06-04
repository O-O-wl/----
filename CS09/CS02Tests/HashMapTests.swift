//
//  CS02Tests.swift
//  CS02Tests
//
//  Created by 이동영 on 04/06/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import XCTest

class HashMapTests: XCTestCase {
    //Given
    var hashMap = HashMap<String, Person>()
    var key1 = "Owl"
    var key2 = "Cat"
    var key3 = "Unicorn"
    var person1 = Person(name: "부엉이", age: 27)
    var person2 = Person(name: "고양이", age: 5)
    var person3 = Person(name: "유니콘", age: 100)
    
    override func setUp() {
        self.hashMap.put(key1, person1)
        self.hashMap.put(key2, person2)
    }
    
    func testPut() {
        //Given
        let beforeSize = self.hashMap.size()
        
        //When
        self.hashMap.put(key3, person3)
        let currentSize = self.hashMap.size()
        
        //Then
        XCTAssertEqual(beforeSize + 1, currentSize)
    }
    
    func testGet(){
        //Given
        let value1 = self.hashMap.get(key1)
        
        //Then
        XCTAssertEqual(value1, person1)
    }
    
    func testIsEmpty() {
        //Then
        XCTAssertFalse(self.hashMap.isEmpty())
    }
    
    func testSize() {
        //Then
        XCTAssertEqual(self.hashMap.size(), 2)
    }
    
    func testKeys() {
        //When
        let keys = [key1,key2]
        
        //Then
        XCTAssertEqual(self.hashMap.keys(), keys)
    }
    
    func testValues() {
        //When
        let values = [person1,person2]
        
        //Then
        XCTAssertEqual(self.hashMap.values(), values)
    }
    
    func testContainsKey() {
        //Then
        XCTAssertTrue(self.hashMap.containsKey(key1))
        
        XCTAssertFalse(self.hashMap.containsKey(key3))
    }
    
    func testContainsValue() {
        //Then
        XCTAssertTrue(self.hashMap.containsValue(person1))
        
        XCTAssertFalse(self.hashMap.containsValue(person3))
    }
    
    func testReplace() {
        ()
    }
    
    func testRemove() {
        //Given
        XCTAssertTrue(self.hashMap.containsKey(key1))
        
        //When
        self.hashMap.remove(key1)
        
        //Then
        XCTAssertFalse(self.hashMap.containsKey(key1))
    }
    
    func testClear() {
        //When
        self.hashMap.clear()
        
        //Then
        XCTAssertFalse(self.hashMap.isEmpty())
    }

}
