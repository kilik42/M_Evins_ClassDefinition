import UIKit

class RandomNumbers {
    //create a manual array
    //let array = [1,2,3,4,5,6,7,8,9,10]
    
    //first attempt to randomize array
    
    var result: Array<Int>!
    func generateRandomNumbers(size: Int) -> [Int]{
        //guarding the array to see if present
        guard size > 0 else{
            return [Int]()
        }
        
        result = Array(repeating: 0, count: size)
        for index in 0..<result.count{
            result[index] = Int.random(in: 0..<size)
        }
        
        return result
        
    }
     
    
    //alternate way of randomizing array
//    func randomizeArray(array: Array<Any>)->Array<Any>{
//        //randomize array
//        return array
//    }
    
    //sort array
    func sortRandomizedArray(result: Array<Int>)->Array<Int>{
        //sort highest to lowest
        let result = result.sorted(by: {$0 > $1})
        return result
    }
    
    
//    func dictionaryStoreArray()->[Int:String]{
//        return
//    }
    
}


//instantiate class ----> sucess!
let array = RandomNumbers()

//generate random numbers ---> got the randmomizer working!!!
var array1 = array.generateRandomNumbers(size:10)

//calling sorted by largest ----> it works
array1 = array.sortRandomizedArray(result: array1)
print(array1)








//let random = RandomNumbers()
