import UIKit

func calcPowerLoop (base : Int, power : Int) -> Int {
    var result = 1
    if power == 0{
        result = 1
    }else{
        for value in 0..<power{
            result *= base
        }
    }
    return result
}

print(calcPowerLoop(base: 2, power: 3))

func calcPowerRecursion (_ base : Int, _  power : Int) -> Int {
    var result = 0
    if power == 0{
        result = 1
    }else{
        result = base * calcPowerRecursion(base, power - 1)
    }
    return result
}

print(calcPowerRecursion(2, 3))

