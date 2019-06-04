//
//  Register.swift
//  CS02
//
//  Created by 이동영 on 21/04/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import Foundation

struct Register{
    //Register는 PROGRAM-COUNT 역할을 하는 PC,
    //그 외에 일반적으로 사용할 수 있는 7개 R1-R7 레지스터를 포함한다.
    
    var PC : Int = 0

    
    enum R:Int16{
        case R1=1,R2,R3,R4,R5,R6,R7
    }
    
    
    
}
