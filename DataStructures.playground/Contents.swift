//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, Queues Implementation using arrays"

struct Queues {
    var front:Int = -1
    var rear:Int = -1
    var qData:[Int?]? = [Int?]()
    
    mutating func push(WithData data:Int)
    {
        
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


