//
//  ViewController.swift
//  Generics
//
//  Created by arshad on 4/27/22.
//

/*
 Generics: generics are any type, with using of generic we make code reuseable and
 
 */

import UIKit

class ViewController: UIViewController {
    
    let intArray = [12,1, 2, 3, 4,22,45,90,12,345435435]
    let stringArray = ["a","b", "c", "d"]
    let sampleData:[Any] = ["dasda",123212,09.09]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //mapData(passData: intArray)
        
        let data =  intArray.sorted()
        let (first,last) = findFirstAndLastNumer(passData: data)
        print(first)
        print(last)
     
        

        
        // var stackType = stack<Any>()  it can be accpet any data stype
        var stackType = stack<Any>()
        stackType.addData("Hello")
        stackType.addData("TYES")
        stackType.addData(1)
        stackType.addData(2)
        stackType.addData(23.09)
        stackType.addData(120.09039)
        stackType.addData(1232321)
        
      let a =   stackType.removeData()
        print(a)
        
        
        
        var stackType1 = stack<String>()
        stackType1.addData("Hello")
        stackType1.addData("TYES")
        stackType1.addData("Mastaer")
        
      let c =   stackType.removeData()
        print(c)
        
        
        
        //without Generics
        var stack = stack1()
        stack.addData(1)
        stack.addData(2)
        stack.addData(3)
        
      let b =   stack.removeData()
        print(b)
        
        
        
    }
    func mapData<T>(passData:[T]){
        print(passData)
    }
    
    func findFirstAndLastNumer<T>(passData:[T]) -> (T,T){
        return (passData[0] , (passData[passData.count - 1]))
    }
}



struct stack1{
    var elements = [Int]()
    
   mutating func addData(_ add:Int){
       self.elements.append(add)
    }
    
    mutating func removeData() -> [Int]{
        self.elements.removeLast()
        return elements
    }
}



//accepted any Data type
struct stack<T>{
    var elements = [T]()
    
   mutating func addData(_ add:T){
       self.elements.append(add)
    }
    
    mutating func removeData() -> [T]{
        self.elements.removeLast()
        return elements
    }
}






