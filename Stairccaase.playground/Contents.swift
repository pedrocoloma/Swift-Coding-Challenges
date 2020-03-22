import Foundation

/*
 Consider a staircase of size 4:

    #
   ##
  ###
 ####
 Observe that its base and height are both equal to n, and the image is drawn using # symbols and spaces.
 The last line is not preceded by any spaces.
 Write a program that prints a staircase of size n.
 
 https://www.hackerrank.com/challenges/staircase/problem
 */

func staircase(n: Int) -> Void {
    var result = ""
    
    for i in 0..<n {
        for j in 0..<n {
            result.append(n - j > i + 1 ? " " : "#")
        }
        result.append("\n")
    }
    print(result)

}

staircase(n: 10)
