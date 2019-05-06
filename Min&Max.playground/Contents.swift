import UIKit

func callMinAndMax(array: [Int]) -> (min: Int, max: Int)?{
    
    if array.isEmpty { return nil }
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count]{
        if value < currentMin {
            currentMin = value
        }else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

var numbers = [1,5,9,54,648,0]

var minMax = callMinAndMax(array: numbers)!
print("Minimim number is \(minMax.0) And the Maximum number is \(minMax.1)")

