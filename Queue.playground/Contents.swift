import UIKit

struct Queue<T> {
  var storage = [T]()
  
  init() { }
  
  var isEmpty: Bool {
    get {
      return storage.isEmpty
    }
  }
  
  var peak: T? {
    get {
      return storage.first
    }
  }
  
  mutating func enqueue(_ value: T) -> Bool {
    storage.append(value)
    return true
  }
  
  mutating func dequeue() -> T? {
    return isEmpty ? nil : storage.removeFirst()
  }
}

extension Queue: CustomStringConvertible {
  var description: String {
    return String(describing: storage)
  }
}

var queue = Queue<Int>()
queue.enqueue(1)
queue.enqueue(2)
queue.enqueue(10)

print(queue)

queue.dequeue()

print(queue)



