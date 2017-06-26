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
        else if (top == -1)
        {
            top = 0
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
            for i in 0...top
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



