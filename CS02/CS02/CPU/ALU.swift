//
//  ALU.swift
//  CS02
//
//  Created by 이동영 on 21/04/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import Foundation

struct ALU {
    
    func excute(_ IR:IR,operand1:Int16,operand2:Int16)->Int16{
        var process : (Int16,Int16)->Int16
        
        switch IR {
        case .ADD:
            process = ADD(_:_:)
        case .SUB:
            process = SUB(_:_:)
        case .AND:
            process = AND(_:_:)
        case .OR:
            process = OR(_:_:)
        default:
            ()
        }
        
        return process(operand1,operand2)
    }
   
    func ADD(_ operand1:Int16,_ operand2:Int16)->Int16{
        return op
    }
    func SUB(_ operand1:Int16,_ operand2:Int16)->Int16{
        
    }
    func AND(_ operand1:Int16,_ operand2:Int16)->Int16{
        
    }
    func OR(_ operand1:Int16,_ operand2:Int16)->Int16{
        
    }
 
   
}
