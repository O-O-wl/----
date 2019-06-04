//
//  CPU.swift
//  CS02
//
//  Created by 이동영 on 21/04/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import Foundation

struct CPU{
    
    let memory = Memory()
    let cu = CU()
    let alu = ALU()
    var register = Register()
    
    mutating func reset(){
        // reset() 함수는 레지스터 값을 모두 지우고, PC 값도 0으로 초기화한다.
        self.register = Register()
    }
    
    mutating func fetch() throws -> (Int16){
        // fetch() 함수는 현재 PC 값에 해당하는 메모리에서 프로그램 명령어를 가져와서 리턴한다.
        // PC 카운트를 +1 증가시킨다.
        self.register.PC += 1
        let IR = try self.memory.fetch(program_count: Int16(self.register.PC))
        return IR
    }
    
    func execute(IR:Int16) throws -> Int16{
        // execute(Int16 IR) 함수는 전달한 명령어를 어떤 명령인지 분석해서 계산하거나 처리한다.
        let instruction = try cu.decode(IR)
        return alu.excute(instruction, operand1: <#T##Int16#>, operand2: <#T##Int16#>)
    }
    func dump()->[Int16]{
        // dump() 함수는 REGISTER들 값을 배열에 넣어서 리턴한다.
        
    }
    
    
    
    
}
