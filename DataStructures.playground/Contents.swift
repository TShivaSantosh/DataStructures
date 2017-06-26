//: Playground - noun: a place where people can play

import UIKit

/***************************************************************
                    Queues Implementation
**************************************************************/

print("Hello, Queues Implementation using linked list")

class Node<Element>
{
    var data:Element
    var nxt:Node<Element>?
    
    init(data:Element)
    {
        self.data = data
    }
}

class QueueLL<Element>
{
    var front:Node<Element>?
    var rear:Node<Element>?
    
    func push(data:Element)-> QueueLL
    {
        let rootNode = Node<Element>(data: data)
        if front == nil
        {
            self.front = rootNode
            self.rear = rootNode
            rootNode.nxt = nil
        }
        else
        {
            self.rear?.nxt = rootNode
            self.rear = rootNode
            self.rear?.nxt = nil
        }
        
        return self
        
        
    }
    
    func pop()
    {
        
        if front == nil
        {
            print("Queue is empty")
        }
        else
        {
            var ptr = self.front
            print("poping element with data \(ptr!.data)")
            self.front = self.front?.nxt
            ptr = nil
            
        }
        
        
    }
    
    func display()
    {
        var ptr = self.front
        if ptr == nil
        {
            print("Queue is empty")
        }
        else
        {
            while ptr != nil
            {
                print("\(ptr!.data)")
                ptr = ptr?.nxt
            }
            
        }
        
        
    }
    
    func peek()
    {
        if front == nil
        {
            print("Queue is empty")
        }
        else
        {
            print("peek of queue is \(self.front!.data)")
        }
    }
    
    
}


let queuell = QueueLL<Int>()
queuell.push(5)
queuell.push(10)
queuell.push(20)
queuell.push(30)
queuell.push(40)
queuell.push(50)
queuell.pop()
queuell.peek()
queuell.display()

print("Hello, Queues Implementation using arrays")
let queueSize = 5
struct Queues {
    var front:Int = -1
    var rear:Int = -1
    var qData:[Int?]? = Array(count: queueSize, repeatedValue: nil)
    
    mutating func push(WithData data:Int)
    {
        if rear == queueSize - 1
        {
            print("Queue is full reached max capacity")
            return
        
        }
        if front == -1 && rear == -1
        {
            front = 0
            rear = 0
        }
        else
        {
            rear += 1
        }
//        print("insertElement at rear \(self.rear)")
        qData?.insert(data, atIndex: rear)
    }
    
    mutating func pop()
    {
        if front == -1 || front > rear
        {
            print("cannot pop as Queue is empty")
        }
        else
        {
            print("Poping element \(self.qData![front]!)");
            self.qData?[front] = nil
            front += 1
            if front > rear
            {
                front = -1
                rear = -1
            }
        }
    }
    
    func peek()
    {
        front == -1 ? print("cannot peek as Queue is empty") :print("first element of queue is \(qData![front]!)")
    }
    
    func display()
    {
        if front == -1 || front > rear
        {
             print("Queue is empty")
        }
        else
        {
            for i in front...rear
            {
                print("\(self.qData![i]!)")
            }
        }
    }
}

var queue = Queues()
queue.push(WithData: 3)
queue.push(WithData: 5)
queue.push(WithData: 20)
queue.push(WithData: 50)
queue.peek()
queue.display()
queue.pop()
queue.pop()
queue.pop()
queue.pop()
queue.pop()
queue.peek()
queue.push(WithData: 90)
queue.display()


print("Hello, Queues Implementation using circular arrays")

let cqMaxSize = 5

struct circularQueue {
    var front = -1
    var rear = -1
    var qArray:[Int?]? = Array( count: cqMaxSize, repeatedValue: nil)
    mutating func push(WithData data:Int)
    {
        if front == 0 && rear == (cqMaxSize - 1)
        {
            print("Queue is full && umable to insert data \(data)")
            return
        }
        else if front == -1 && rear == -1
        {
            front = 0
            rear = 0
            
        }
        else if front != 0 && rear == (cqMaxSize - 1)
        {
            rear = 0
        }
        else
        {
            
            rear += 1
        }
        
        self.qArray![rear] = data
    }
    
    mutating func pop()
    {
        print("poping at index \(self.front)")
        
        if front == -1
        {
            print("Queue is empty")
        }
        else if (front == rear)
        {
            
            let poped = self.qArray![front]
            self.qArray?[front] = nil
            print("popped element \(poped!)")
            front = -1
            rear = -1
        }
        else if (front == cqMaxSize - 1)
        {
            let poped = self.qArray![front]
            self.qArray?[front] = nil
            print("popped element \(poped!)")
            front = 0
            
        }
        else
        {
            let poped = self.qArray![front]
            self.qArray?[front] = nil
            print("popped element \(poped!)")
            front += 1
            
        }
        
        
    }
    
    func display()
    {
        print("display \(front) && \(rear)")
        if front == -1
        {
            print("Queue is empty")
        }
        else
        {
            if front <= rear{
                for i in front...rear
                {
                    print("\(self.qArray![i]!)")
                }
            }
            else
            {
                
                for i in 0...rear
                {
                    print("\(self.qArray![i]!)")
                }
                
                for i in front...(cqMaxSize-1)
                {
                    print("\(self.qArray![i]!)")
                }
                
            }
        }
    }
    
    func peek()
    {
        front == -1 ? print("cannot peek as Queue is empty") :print("first element of queue is \(qArray![front]!)")
    }
    
    
}


var cQueue = circularQueue()
cQueue.push(WithData: 13)
cQueue.push(WithData: 15)
cQueue.push(WithData: 17)
cQueue.push(WithData: 19)
cQueue.push(WithData: 21)
cQueue.push(WithData: 23)
cQueue.peek()
cQueue.pop()
cQueue.peek()
cQueue.push(WithData: 25)
cQueue.pop()
cQueue.pop()
cQueue.pop()
cQueue.pop()
cQueue.pop()
cQueue.display()
cQueue.push(WithData: 13)
cQueue.push(WithData: 15)
cQueue.push(WithData: 17)
cQueue.push(WithData: 19)
cQueue.push(WithData: 21)
cQueue.push(WithData: 23)
cQueue.display()
