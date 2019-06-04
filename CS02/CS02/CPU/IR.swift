//
//  IR.swift
//  CS02
//
//  Created by 이동영 on 22/04/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import Foundation

enum IR:Int16{
    case ADD = 0111
    case SUB = 1010
    case AND = 0101
    case OR = 0110
    case LOAD = 0001 //  dst. Reg    base. Reg    000    offset. Reg    (base. Reg + offset. Reg) 주소 메모리 값을 읽어서 dst. Reg로 로드한다.
    //   LOAD    0010    dst. Reg    base. Reg    1    offset. value (5bit)    (base. Reg + offset. value) 주소 메모리 값을 읽어서 dst. Reg로 로드한다.
    case STORE =   0011 //   src. Reg    base. Reg    000    offset. Reg    dst. Reg 값을 (base. Reg + offset. Reg) 주소 메모리에 저장한다.
    //  STORE    0100    src. Reg    base. Reg    1    offset. value (5bit)    dst. Reg 값을 (base. Reg + offset. value) 주소 메모리에 저장한다.
    case  MOV  =  1011
}
