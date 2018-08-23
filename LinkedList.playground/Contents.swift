import UIKit

class Node {
  var value: Int
  var next: Node?
  
  init(_ value: Int, next: Node? = nil) {
    self.value = value
    self.next = next
  }
}

class LinkedList {
  var head: Node?

  // Linked List Traversal
  func display() {
    guard head != nil else {
      print("Empty List")
      return
    }
    var output = ""
    var current = head
    while current != nil {
      output += ("\(current!.value) -> ")
      current = current?.next
    }
    output += "nil"
    print(output)
  }
  
  func insert(_ value: Int) {
    print("✅ inserting \(value)")
    guard head != nil else {
      head = Node(value)
      return
    }
    var current = head
    while current?.next != nil {
      current = current?.next
    }
    current?.next = Node(value)
  }
  
  func delete(_ value: Int) {
    print("❌ deleting \(value)")
    guard head?.value != value else {
      head = head?.next
      return
    }
    var prev = head
    var current = head?.next
    while current != nil && current?.value != value {
      prev = current
      current = current?.next
    }
    prev?.next = current?.next
  }
  
  static func reverse(_ node: Node?) -> String {
    var output = ""
    if node == nil {
      return output
    }
    output += reverse(node?.next)
    output += "\(node!.value) "
    return output
  }
  
  func reverse(_ node: Node?) -> String {
    var output = ""
    if node == nil {
      return output
    }
    output += reverse(node?.next)
    output += "\(node!.value) "
    return output
  }
  
  func findMiddleWithTwoPointers() -> Int? {
    var c = head
    var t = head
    while t?.next != nil {
      t = t?.next?.next
      c = c?.next
    }
    print("\(c!.value) 🍠")
    return c?.value
  }
  
  func findMiddleWithCounter() -> Int? {
    var current = head
    var counter = 0
    var mid = head
    while current?.next != nil {
      current = current?.next
      counter += 1
      if counter % 2 == 1 {
        mid = mid?.next
      }
    }
    print("\(mid!.value) 🍠")
    return mid?.value
  }
}


let list = LinkedList()
list.display()
list.insert(1)
list.display()
list.insert(2)
list.insert(3)
list.insert(4)
list.display()
list.delete(1)
list.display()
list.delete(3)
list.display()
list.insert(5)
list.insert(6)
list.insert(7)
list.display()
list.delete(8)
list.display()
list.delete(5)
list.display()
list.insert(99)
list.insert(6)
list.insert(7)
list.display()
list.delete(7) // will remove first occurence of the value = 7
list.display()

print(LinkedList.reverse(list.head))

list.insert(11)
list.display()
print("findMiddleWithTwoPointers 🔥")
list.findMiddleWithTwoPointers()
print("findMiddleWithCounter 🔥")
list.findMiddleWithCounter()
