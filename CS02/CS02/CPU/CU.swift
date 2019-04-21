//
//  CU.swift
//  CS02
//
//  Created by 이동영 on 21/04/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import Foundation

struct CU{
    
    
    func decode(_ byte:Int16) throws ->(IR){
        guard let instruction = IR.init(rawValue: byte) else {
            throw Exception.FAIL_DECODING
        }
        return instruction
    }
    
  
}
