//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, Queues Implementation using arrays"

struct Queues {
    var front = -1
    var rear = -1
    var qData:[Int]? = nil
    
    mutating func insertElement(WithData data:Int)
    {
        
        if qData == nil
        {
            qData = [Int]()
            front =  0
            rear = 0
        }
//        print("insertElement at rear \(self.rear)")
        qData?.insert(data, atIndex: rear)
        rear += 1
    }
    
    func display()
    {
    
        if qData != nil
        {
        
            for data in self.qData!
            {
                print("\(data)")
            }
            
        }
        else
        {
            print("Queue is empty")
        }
    }
}

var queue = Queues()
queue.insertElement(WithData: 3)
queue.insertElement(WithData: 5)
queue.insertElement(WithData: 20)
queue.insertElement(WithData: 50)

queue.display()


