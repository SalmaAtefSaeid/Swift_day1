import UIKit

func swap (num1 : inout Int, num2 : inout Int){
    let temp = num1
    num1 = num2
    num2 = temp
}

var fNum = 1
var sNum = 8

swap(&fNum, &sNum)
print(fNum)
print(sNum)
