


let inputs = [(false,false),(false,true),(true,false),(true,true)]

func nand ( paramA:Bool,  paramB:Bool) -> Bool {
    let answer =  !(paramA && paramB)
    return answer;
}

func nor ( paramA:Bool,  paramB:Bool) -> Bool {
    let answer =  !(paramA || paramB)
    return answer;
}


print("=============   NAND    =============")
for input in inputs {
    print(nand(paramA: input.0, paramB: input.1))
}


print("=============   NOR    =============")
for input in inputs {
    print(nor(paramA: input.0, paramB: input.1))
}

func halfadder(_ bitA:Bool, _ bitB:Bool) -> [Bool] {
    
    
    return []
}
