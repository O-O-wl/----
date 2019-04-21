//
//  Memory.swift
//  CS02
//
//  Created by 이동영 on 18/04/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import Foundation

class Memory{
    
    enum Exception:Error{
        case OUT_OF_RANGE
        case NULL_POINT
    }
    
    
    var PROGRAM_TEXT = [Int16?].init(repeating: nil, count: 65535)
    var PROGRAM_HEAP = [Int16?].init(repeating: nil, count: 65535)
    
    enum RangeOfMemory:Int32,CaseIterable{
        case program_text = 0x0000 // 65535
        case program_heap = 0x10000 //131071
        case end  = 0x20000
        
        func getRange()->Range<Int32>{
            switch self {
            case .program_text:
                return RangeOfMemory.program_text.rawValue..<RangeOfMemory.program_heap.rawValue
            case .program_heap:
                return  RangeOfMemory.program_heap.rawValue..<RangeOfMemory.end.rawValue
            case .end :
                return RangeOfMemory.end.rawValue..<Int32.max
            }
        }
        static func  include(_ address:Int32) -> (RangeOfMemory){
            var area : RangeOfMemory = .end
            _ = RangeOfMemory.allCases.map{
                memory in
                if memory.getRange().contains(address) {
                    area = memory
                }
            }
            return area
        }
    }
    
    func peek(address:Int32) throws -> Int16 {
        guard address < RangeOfMemory.end.rawValue , address > 0 else { throw Exception.OUT_OF_RANGE }
        let area = RangeOfMemory.include(address)
        let inMemoryAddress = Int16(address - area.rawValue)
        switch area {
        case .program_text:
            return try self.fetch(program_count: inMemoryAddress )
        case .program_heap:
            return  try self.load(address: inMemoryAddress)
        case .end:
            throw Exception.OUT_OF_RANGE
        }
    }
    
    
    func fetch(program_count:Int16) throws ->(Int16){
        //  TEXT 영역에서 program_count 번째에 위치한 인스트럭션Instruction 명령어(16비트)를 리턴한다.
        guard let instruction : Int16 = self.PROGRAM_TEXT[Int(program_count)] else {
            throw Exception.NULL_POINT
        }
        return instruction
    }
    func locate(program:[Int16]){
        
        //  [Int16] 배열로 구성된 프로그램을 TEXT 영역에 배치한다.
        _ = program.map{
            data in
            PROGRAM_TEXT.append(data)
        }
    }
    
    
    func load(address:Int16) throws ->Int16{
        //  PROGRAM_HEAP 영역에서 0x10000 + address 주소에 있는 메모리 값을 리턴한다.
        guard let data:Int16 = PROGRAM_HEAP[Int(address)] else { throw Exception.NULL_POINT}
        return data
    }
    func store(address:Int16,data:Int16){
        //  PROGRAM_HEAP 영역에 0x10000 + address 주소에 data 값을 저장한다.
        PROGRAM_HEAP.insert(data, at: Int(address))
    }
    
}

