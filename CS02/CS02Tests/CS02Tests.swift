//
//  CS02Tests.swift
//  CS02Tests
//
//  Created by 이동영 on 21/04/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import XCTest

class CS02Tests: XCTestCase {
    
    let RAM = Memory()
    
    func testMemoryFetch(){
        RAM.locate(program: [0,1,2,3,4,5,6])
        do{
            let instruction = try RAM.peek(address: 0)
            XCTAssertEqual(instruction, 0,"명령을 제대로 인출했습니다.")
            XCTAssertThrowsError(try RAM.peek(address: 10),"Null Point Exception 제대로 발생")  }catch{
        }
        
    }
    func testMemoryLoad(){
        RAM.store(address: 0, data: 11)
        do{
            let data = try RAM.peek(address: 65536)
            XCTAssertEqual(data, 11,"데이터를 제대로 로드했습니다.")
            XCTAssertThrowsError(try RAM.peek(address: 65537),"Null Point Exception 제대로 발생")
        }catch{
            
        }
    }
    
}
