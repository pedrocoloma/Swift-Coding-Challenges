import Foundation

/*
 Given five positive integers, find the minimum and maximum values that can be calculated by summing exactly four of the five integers.
 Then print the respective minimum and maximum values as a single line of two space-separated long integers.
 For example, arr = [1, 3, 5, 7, 9]. Our minimum sum is 1 + 3 + 5 = 16 and our maximum sum is 3 + 5 + 7 + 9 = 24.
 We would print 16 24
 
 https://www.hackerrank.com/challenges/mini-max-sum/problem
 */

func miniMaxSum(arr: [Int]) -> Void {
    var sum = 0
    var highestNumber = arr[0]
    var lowestNumber = arr[0]

    for number in arr {
        if number >= highestNumber {
            highestNumber = number
        } else if number <= lowestNumber {
            lowestNumber = number
        }
        sum += number
    }
    print("\(sum - highestNumber) \(sum - lowestNumber)")
}

let testArray = [1, 3, 5, 7, 9]
miniMaxSum(arr: testArray)
