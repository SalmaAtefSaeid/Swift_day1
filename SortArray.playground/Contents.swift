import UIKit

func swap (array: inout [Int], num1 :Int, num2 : Int){
    let temp = array[num1]
    array[num1] = array[num2]
    array[num2] = temp
}

func sortArray(_ array: inout [Int]) ->  [Int]?{
    
    if array.isEmpty { return nil }
    
    for value in 0..<array.count-1{
        var min = value
        for index in value + 1..<array.count{
            if array[index] < array[min] {
                min = index
            }
        }
         if value != min {
            swap(array: &array, num1: value, num2: min)
         }
    }
    return array
}

var numbers = [1,5,9,54,648,0]
sortArray(&numbers)

print(sortArray(&numbers)!)

