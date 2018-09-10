import UIKit

struct Stack<T> {
  private var storage: [T] = []
  
  init() { }
  
  var isEmpty: Bool {
    return storage.isEmpty
  }
  
  var top: T? {
    get {
      return storage.last
    }
  }
  
  var count: Int {
    get {
      return storage.count
    }
  }
  
  var max: Int?
  
  mutating func push(_ element: T) {
    storage.append(element)
  }
  
  mutating func pop() -> T? {
    return storage.popLast()
  }
}

extension Stack: CustomStringConvertible {
  var description: String {
    guard !isEmpty else { return "Empty Stack" }
    var top = "------ top ------\n"
    let elements = storage.map { "\($0)" }.reversed().joined(separator: "\n")
    let bottom = "\n------ bottom ------\n"
    let maxString = "max: \(max!)"
    return top + elements + bottom + maxString
  }
}

//var stack = Stack<Int>()

//print(stack)
//
//stack.push(20)
//stack.push(11)
//stack.push(30)
//
//print(stack)
//
//stack.pop()
//
//print(stack)
//
//stack.push(62)
//
//print(stack)

extension Stack where T == Int {
  mutating func pushForMax(_ value: Int) {
    storage.append(value)
    if max == nil || max ?? 0 < value {
      max = value
    }
  }
  mutating func popForMax() {
    let last = storage.popLast()
    print("last: \(last!)")
    max = last
    if last == max {
      var newmax = 0
      storage.forEach {
        if $0 > newmax {
          newmax = $0
        }
      }
      max = newmax
    }
  }
}

var n = Stack<Int>()
n.pushForMax(1)
n.pushForMax(354)
n.pushForMax(523)
n.pushForMax(37)
n.pushForMax(999)
n.pushForMax(89)
n.popForMax()
n.popForMax()
n.popForMax()
n.popForMax()

print(n)

print(n.max!)

