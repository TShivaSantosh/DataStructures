//: Playground - noun: a place where people can play

import UIKit
print("Hello, Data Structures")


/*
    Single Linked List
*/

class Node{
    let data:Int!
    var next:Node?
    init(_ data:Int)
    {
        self.data = data
    }
}
var start:Node?
func createList(data:Int)->Node?
{
    if start == nil
    {
        start = Node(data)
    }
    else
    {
        var ptr = start!
        while ptr.next != nil
        {
            ptr = ptr.next!
        }
        ptr.next = Node(data)
    }
    return start
}

func display()
{
    start == nil ? {
        print("linked ist is empty")
        }():{
            var ptr = start
            while ptr != nil
            {
                print("\(ptr?.data ?? 0)", separator: "", terminator: " ")
                ptr = ptr?.next
            }
            print("")
            }()
    
}

func numberOfNodes()->Int
{
    var count:Int = 0
    var ptr = start
    while (ptr != nil)
    {
        count = count + 1
        ptr = ptr?.next
    }
    
    return count
    
}

func insertNodeAtBeg(data:Int)->Node?
{
    if start == nil
    {
        start = Node(data)
    }
    else
    {
        let result = Node(data)
        result.next = start
        start = result
    }
    return start

}

func insertNodeAtEnd(data:Int)->Node?
{
    if start == nil
    {
        start = Node(data)
    }
    else
    {
        var ptr = start
        while ptr?.next != nil
        {
            ptr = ptr?.next
        }
        ptr?.next = Node(data)
    
    }
    return start
}

func insertNodeBeforeNode(value:Int,data:Int)->Node?
{

    var prePtr:Node?
    var ptr:Node? = start
    
    while ptr?.data != value
    {
        prePtr = ptr
        ptr = ptr?.next
    }
    let result = Node( data)
    result.next = ptr
    prePtr?.next = result
    
    return start
}



start = createList(1)
start = createList(2)
start = createList(3)
start = createList(4)
start = createList(5)
start = createList(6)
//start = createList(7)
start = createList(8)
start = insertNodeAtBeg(0)
start = insertNodeAtBeg(-1)
start = insertNodeAtEnd(10)
start = insertNodeBeforeNode(8, data: 7)
start = insertNodeAtEnd(11)
start = insertNodeAtEnd(12)
start = insertNodeAtBeg(-2)

display()
print("number of nodes \(numberOfNodes())")





