//: Playground - noun: a place where people can play

import UIKit


/***************************************************************
                    Stacks Implementation
**************************************************************/

let maxStackSize = 5

class StacksArray {
    
    var sArray:[Int?]? = Array( count: maxStackSize, repeatedValue: nil)
    var top:Int = -1
    
    func push(withData data:Int)
    {
        
        if top == (maxStackSize - 1)
        {
            print("Stack is full cannot push data \(data)")
            return
        }
        else
        {
            top += 1
        }
        sArray?[top] = data
        
    }
    
    
    func pop()
    {
        if top == -1
        {
            print("Stack is empty")
            return
        }
        else
        {
            let element = sArray?[top]
            print("poping element with data \(element)")
            sArray?[top] = nil
            top -= 1
        }
    
    
    }
    
    func peek()
    {
        if top == -1
        {
            print("Stack is empty")
        }
        else
        {
            let element = sArray?[top]
            print("top element is \(element)")
        }
    
    }
    
    func display()
    {
        
        if top == -1
        {
            print("Stack is empty")
        }
        else
        {
            print("Stack has following data")
            for i in (0...top).reverse()
            {
                print("\(sArray![i]!)")
                
            }
            
        }
        
    }
    
}

let stack = StacksArray()
stack.push(withData: 1)
stack.push(withData: 2)
stack.push(withData: 3)
stack.push(withData: 4)
stack.push(withData: 5)
stack.push(withData: 6)
stack.display()
stack.pop()
stack.peek()

print("Stack implementation using Linked list")
class Node
{
    var data:Int!
    var next:Node?
    init( data:Int)
    {
        self.data = data
    }
}
class Stack
{
    var top:Node?
    
    
    func push(data:Int)
    {
        if top == nil
        {
            let node = Node(data: data)
            node.next = nil
            top = node
        }
        else
        {
            let node = Node(data: data)
            node.next = top
            top = node
        }
    }
    
    func pop()
    {
        if top == nil
        {
            print("Stack is empty")
        }
        else
        {
            let element = top
            print("poped element with data \(element?.data ?? 0)")
            top = top?.next
        }
    }
    
    func peek()
    {
        if top == nil
        {
            print("Stack is empty")
        }
        else
        {
            print("top element is \(top?.data ?? 0)")
        }
    
    }
    
    func display()
    {
        if top == nil
        {
            print("Stack is empty")
        }
        else
        {
            var ptr = top
            while ptr != nil
            {
                print("\(ptr?.data ?? 0)")
                ptr = ptr?.next
            }
            
        }
    
    }
    
}

let lStack = Stack()
lStack.push(1)
lStack.push(2)
lStack.push(3)
lStack.push(4)
lStack.display()
lStack.pop()
lStack.push(4)
lStack.display()
lStack.peek()
