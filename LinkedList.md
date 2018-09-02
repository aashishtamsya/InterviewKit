# Linked List

A linked list is a linear data structure, in which the elements are not stored at contiguous memory locations. The elements in a linked list are linked using pointers

[Source](/LinkedList.playground/Contents.swift)

## Tasks

- [Introduction to Linked List](#introduction-to-linked-list)
- [Linked List Insertion](#linked-list-insertion)
- [Linked List Deletion with a given key](#linked-list-deletion-with-a-given-key)
- [Linked List Deletion with at given position](#linked-list-deletion-with-at-given-position)

### ~~Introduction to Linked List~~

### ~~Linked List Insertion~~


### ~~Linked List Deletion with a given key~~
 
```swift
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
```

### ~~Linked List Deletion with at given position ~~

```swift
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
```

<!-- 

Write a function to delete a Linked List
Find Length of a Linked List (Iterative and Recursive)
Search an element in a Linked List (Iterative and Recursive)
Write a function to get Nth node in a Linked List
Nth node from the end of a Linked List
Print the middle of a given linked list
Write a function that counts the number of times a given int occurs in a Linked List
Detect loop in a linked list
Find length of loop in linked list
Function to check if a singly linked list is palindrome
Remove duplicates from a sorted linked list
Remove duplicates from an unsorted linked list
Swap nodes in a linked list without swapping data
Pairwise swap elements of a given linked list
Move last element to front of a given Linked List
Intersection of two Sorted Linked Lists
Intersection point of two Linked Lists.
QuickSort on Singly Linked List
Segregate even and odd nodes in a Linked List
Reverse a linked list 

-->