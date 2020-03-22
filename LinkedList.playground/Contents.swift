import Foundation

class Node {
    var value: Int
    var next: Node?
    
    init(value: Int) {
        self.value = value
    }
}

class LinkedList {
    
    var head: Node?
    
    init(head: Node?) {
        self.head = head
    }
    
    func append(_ node: Node) {
        
        guard head != nil else {
            head = node
            return
        }
        
        var current = head
        while let _ = current?.next {
            current = current?.next
        }
        current?.next = node
    }
    
    // Get a node from a particular position.
    // Assume the first position is "1".
    // Return "nil" if position is not in the list.
    func getNode(atPosition position: Int) -> Node? {
        var current = head
        var i = 1
        
        while let _ = current?.next, i < position {
            current = current?.next
            i += 1
        }

        return current
    }
    
    // Insert a new node at the given position.
    // Assume the first position is "1".
    // Inserting at position 3 means between
    // the 2nd and 3rd nodes.
    func insertNode(_ node: Node, at position: Int) {
        
        var current = head
        var i = 1
        
        while let _ = current?.next, i < position {
            current = current?.next
            i += 1
        }
        
        node.next = current?.next?.next
        current?.next = node
    }
    
    // Delete the first node with a given value.
    func deleteNode(withValue value: Int) {
        var current = head
        
        if current?.value == value {
            head = head?.next
            return
        }
        while let _ = current?.next, current?.next?.next?.value != value {
            current = current?.next
        }
        
        current?.next = current?.next?.next
    }
    
    func printAllNodes() {
        var current = head
        var result = ""

        while true {
            result.append(" \(current?.value ?? -1) ")
            current = current?.next
            
            if current?.next == nil { break }
        }
        result.append(" \(current?.value ?? -1) ")
        print(result)
    }
}

// Test cases

// Set up some Nodes
let n1 = Node(value: 1)
let n2 = Node(value: 2)
let n3 = Node(value: 3)
let n4 = Node(value: 4)

// Start setting up a LinkedList
let ll = LinkedList(head: n1)
ll.append(n2)
ll.append(n3)

ll.printAllNodes()
// Test getNode(atPosition:)
print(ll.head!.next!.next!.value) // Should print 3
print(ll.getNode(atPosition: 3)!.value) // Should also print 3

ll.printAllNodes()
// Test insert
ll.insertNode(n4, at: 3)
print(ll.getNode(atPosition: 3)!.value) // Should print 4 now

ll.printAllNodes()
// Test delete(withValue:)
ll.deleteNode(withValue: 1)

print(ll.getNode(atPosition: 1)!.value) // Should print 2 now

ll.printAllNodes()
print(ll.getNode(atPosition: 2)!.value) // Should print 4 now
print(ll.getNode(atPosition: 3)!.value) // Should print 3

