import UIKit

let array = [3, 1, 2, 2, 1, 2, 3, 3]

func findNbyK(_ array: [Int], k: Int) -> [Int] {
  var map = array.reduce(into: [:], { $0[$1, default:0 ] += 1 })
  print(map)
  
  return map.filter({ $0.value > (array.count/k) }).compactMap { $0.key }
}

print(findNbyK(array, k: 4))
