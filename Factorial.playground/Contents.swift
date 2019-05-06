import UIKit

func getFactorial (_ value : Int) -> Int {
    var result = 0
    if value == 0{
        result = 1
    }else{
        result = value * getFactorial(value - 1)
    }
    return result
}

print(getFactorial(5))

