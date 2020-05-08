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
    
    //sort array by largest number
    func sortRandomizedArrayLargest(result: Array<Int>)->Array<Int>{
        //sort highest to lowest
        let resultLarge = result.sorted(by: {$0 > $1})
        return resultLarge
    }
    //sort array by lowest number
    func sortRandomizedArraySmallest(result: Array<Int>)->Array<Int>{
        //sort highest to lowest
        let resultSmall = result.sorted(by: {$0 < $1})
        return resultSmall
    }
    
    
    //from array to dictionary --> heaven help me!
    func dictionaryStoreArray(_result1: Array<Int>, _result2: Array<Int>)->[Array<Int>:Array<Int>]{
        var myDict = [Array<Int>:Array<Int>]()
        myDict[_result1] = _result2
        return myDict

    }
    
}


//instantiate class ----> sucess!
let array = RandomNumbers()

//generate random numbers ---> got the randmomizer working!!!
var array1 = array.generateRandomNumbers(size:10)

//calling sorted by largest ----> it works
var largestNumArray = array.sortRandomizedArrayLargest(result: array1)
print(largestNumArray)

//calling sorted by smallest
var smallestNumArray = array.sortRandomizedArraySmallest(result: array1)
print(smallestNumArray)

//trying from array to dictionary
    //wrong code below it is old
    //var dict = array.dictionaryStoreArray(_result: array1)
var dictTest = array.dictionaryStoreArray(_result1: largestNumArray, _result2: smallestNumArray)
print(dictTest)


//sample code for array to dictionary
//let list: [Int] = [1, 2, 3, 4]
//let d = Dictionary(uniqueKeysWithValues: list.lazy.map { ($0, "\($0)") })
//print(d)





//let random = RandomNumbers()
