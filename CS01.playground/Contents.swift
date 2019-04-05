let test2bit = [(false,false),(false,true),(true,false),(true,true)]

var test3bit = [(Bool,Bool,Bool)]()

let bools = [false,true]

for element1 in bools {
    for element2 in bools{
        for element3 in bools{
            test3bit.append((element1,element2,element3))
        }
    }
}



func nand ( paramA:Bool,  paramB:Bool) -> Bool {
    let answer =  !(paramA && paramB)
    return answer;
}

func nor ( paramA:Bool,  paramB:Bool) -> Bool {
    let answer =  !(paramA || paramB)
    return answer;
}





func halfadder(_ bitA:Bool, _ bitB:Bool) -> [Bool] {
    
    let sum = bitA != bitB
    let carry = bitA && bitB
    
    return [sum,carry]
}

func fulladder(_ bitA:Bool, _ bitB:Bool, _ carry:Bool) -> [Bool] {
    
    var anwser = [Bool]()
    
    var first = halfadder(bitA, bitB)
    
    let firstSum = first[0]
    let firstCarry = first[1]
    
    var second = halfadder(firstSum, carry)
    let secendSum = second[0]
    let secendCarry = second[1]
    
    
    
    anwser.append(secendSum)
    anwser.append(firstCarry||secendCarry)
    
    
    return anwser
}
/*
 
 print("=============   NAND    =============")
 for input in test2bit {
 print(nand(paramA: input.0, paramB: input.1))
 }
 
 
 print("=============   NOR    =============")
 for input in test2bit {
 print(nor(paramA: input.0, paramB: input.1))
 }
 
 print("=============   HALF ADDER    =============")
 for input in test2bit {
 print(halfadder(input.0, input.1))
 }
 
 
 print("=============   FULL ADDER    =============")
 for input in test3bit{
 print("1:\(input.0) 2:\(input.1) 3:\(input.2)")
 print(fulladder(input.0, input.1, input.2))
 }
 */



func byteadder(_ byteA:[Bool], _ byteB:[Bool]) -> [Bool] {
    
    var carry = false
    var resultByte = [Bool]()
    
    for i in 0..<byteA.count{
        let result = fulladder(byteA[i], byteB[i], carry)
        resultByte.append(result[0])
        carry = result[1]
        
    }
    
    if(carry){
        resultByte.append(carry)
    }
    
    return resultByte
}




let byteA =  [true,true,true,false,true]
// 10111

let byteB =  [true,true,true,false,true]


print(byteadder(byteA, byteB))
