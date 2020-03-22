import Foundation

/*
 Lilah has a string s of lowercase English letters that she repeated infinitely many times.
 Given an integer n, find and print the number of letter a's in the first n letters of Lilah's infinite string.
 For example, if the string s = `abcac` and n = 10, the substring we consider is abcaccabcac, the first 10 characters of her infinite string.
 There are 4 occurrences of a in the substring.
 
 https://www.hackerrank.com/challenges/repeated-string/problem
 */

func repeatedString(s: String, n: Int) -> Int {
    var occurrences = 0, i = 0, remainder = 0
    let repetitions = n / s.count
    let remainderCount = n % s.count
    
    for letter in s {
        if letter == "a" {
            occurrences += 1
            if i < remainderCount {
                remainder += 1
            }
        }
        i += 1
    }
    return occurrences * repetitions + remainder
}

repeatedString(s: "a", n: 10)
