import UIKit

let array = [7,1,3,16,10,4]
let driver = [10, 1, 3, 5, 20, 40, 2]

/// Given an unsorted array 'A' of size n. Find a value 'P' such that P == A[i] for (i <= n) and there are exactly P numbers greater than P after index i;
func findP(_ array: [Int]) -> Int {
  for i in 0 ..< array.count {
    var count = 0
    for j in i ..< array.count {
      if array[i] < array[j] {
        count += 1
      }
    }
//    print("for index: \(i). greater : \(count). value: \(array[i])")
    if count == array[i] { return array[i] }
  }
  return -1
}
print(findP(driver))
