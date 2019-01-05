//
//  main.swift
//  classInheritance
//
//  Created by Mac on 05/01/19.
//  Copyright © 2019 Bhadresh. All rights reserved.
//

import Foundation

class ParentClass{
    
    //stored property
    public var a:Int = 0
    private var b:Int = 0
    
    func SetValues(a:Int, b:Int) -> Void{
        
        self.a = a
        self.b = b
        
    }
    
    //computed property
    public var getB:Int{
        get{
           return b
        }
        set(v){
           b = v
        }
    }
    
}

class ChildClass: ParentClass {
    
    func PrintData()  {
        print("value in a: \(a) and b: \(getB)")
    }
    
}


var obj = ChildClass()
obj.SetValues(a: 44, b: 445)
obj.PrintData()

class AClass {
    //special function that can be executed when the obj of class created
    init() {
        print("Class A Object Created!")
    }
}

class BClass: AClass {
    //BCLass
    override init() {
        super.init()//AClass init
        
        print("Class B Object Created!")
    }
}

var aObj = AClass()
print("_______________")

var bObj = BClass()
print("_______________")


class CClass: BClass {
    //BCLass
    override init() {
        super.init()//BClass init
        
        print("Class C Object Created!")
    }
}
var cObj = CClass()



//overload init method

class MyClass {
    var a = 0
    init() {
        a = -1
    }
    init(x:Int) {
        a = x
    }
    init(x:Int, y:Int) {
        a = x + y
    }
}

var mObj1 = MyClass()
var mObj2 = MyClass(x: 33)
var mObj3 = MyClass(x: 4, y: 55)

print(mObj1.a)
print(mObj2.a)
print(mObj3.a)
