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
      print("Empty List ‼️")
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
  
  func insert(_ value: Int, at position: UInt) {
    print("✅ inserting at position: \(position)")
    if position == 0 {
      head = Node(value, next: head)
      return
    }
    var index = 0
    var prev = head
    var current = head
    while index < position {
      prev = current
      current = current?.next
      index += 1
    }
    prev?.next = Node(value, next: current)
  }
  
  func delete(_ value: Int) {
    print("❌ deleting value: \(value)")
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
  
  func delete(at position: UInt) {
    print("❌ deleting at position: \(position)")
    if position == 0 {
      head = head?.next
      return
    }
    var index = 0
    var current = head
    var prev = head
    while current?.next != nil && index < position {
      prev = current
      current = current?.next
      index += 1
    }
    prev?.next = current?.next
  }
  
  func deleteList() {
    print("📣 Deleting Linked List.")
    head = nil
    print("Linked List deleted. ❎")
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

let demo = LinkedList()
demo.insert(1)
demo.insert(2)
demo.insert(3)
demo.insert(4)
demo.insert(5)

demo.display()
//demo.delete(at: 2)
//demo.display()
//demo.delete(at: 3)
//demo.display()
//demo.delete(at: 1)
//demo.display()
//demo.delete(at: 1)
//demo.display()
//demo.delete(at: 5)
//demo.display()

demo.insert(98, at: 0)
demo.insert(32, at: 0)
demo.display()
demo.insert(44, at: 99)
demo.display()
demo.insert(77, at: 7)
demo.display()

demo.deleteList()
demo.display()
