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
        
    }
    func mapData<T>(passData:[T]){
        print(passData)
    }
    
    
    func findFirstAndLastNumer<T>(passData:[T]) -> (T,T){
        return (passData[0] , (passData[passData.count - 1]))
    }
}









