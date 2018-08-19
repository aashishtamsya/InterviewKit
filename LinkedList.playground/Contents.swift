import UIKit

class Node {
  var value: Int
  var next: Node?
  
  init(_ value: Int, next: Node?) {
    self.value = value
    self.next = next
  }
}

class LinkedList {
  var head: Node?
  
  func display() {
    var output = ""
    var current = head
    while current != nil {
      output += ("\(current!.value) -> ")
      current = current?.next
    }
    print(output + "nil")
  }
  
  func insert(_ value: Int) {
    print("inserting \(value)")
    if head == nil {
      head = Node(value, next: nil)
      return
    }
    var current = head
    while current?.next != nil {
      current = current?.next
    }
    current?.next = Node(value, next: nil)
  }
  
  func delete(_ value: Int) {
    print("deleting \(value)")
    if head?.value == value {
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
  
  func setupDummyNodes() {
    let three = Node(3, next: nil)
    let two = Node(2, next: three)
    head = Node(1, next: two)
  }
  
}

let list = LinkedList()
list.setupDummyNodes()
list.display()
list.insert(4)
list.display()
list.delete(2)
list.display()
list.insert(5)
list.display()
list.delete(2)
list.display()
