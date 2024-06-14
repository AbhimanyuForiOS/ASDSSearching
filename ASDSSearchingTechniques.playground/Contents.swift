import UIKit


//MARK: 1.  Linear Search
/// A linear search is the simplest approach employed to search for an element in a data set.
///The time complexity of linear search O(n).
func linearSearch(_ list : [Int],element:Int) -> Int {
    // -1 means element is not in the list
    var index = -1
    guard !list.isEmpty else { return -1 }
    
    for i in 0 ..< list.count {
        if list[i] == element {
            index = i
        }
    }
    return index
}
let elementLinear = 5
let indexFromLinearApproach = linearSearch([23,223,1,5,3,4,2,56], element: elementLinear)
print("1. Via Linear Search, element: \(elementLinear) at index : \(indexFromLinearApproach)")






//MARK: 2.  Binary Search
/// A Binary Search Algorithm is a searching algorithm used in a SORTED array by repeatedly dividing the search interval in half.
/// The time complexity of binary search O(log n).
func binarySearch(_ list : [Int],element:Int) -> Int {
    // -1 means element is not in the list
    guard !list.isEmpty else { return -1 }
    var leftBound = 0
    var rightBound = list.count - 1
    
    while leftBound <= rightBound {
        let middle = (leftBound + rightBound) / 2
        if element  == list[middle]  {
            // if equal then return index
            return middle
        } else if element  < list[middle] {
            // go left side for next search in the list
            rightBound = middle - 1
        } else {
            // go right side for next search in the list
            leftBound = middle + 1
        }
    }
    return -1
}

let elementBianary = 0
let index = binarySearch([0,1,2,4,23,222,340,1222,1233,1234,1255,1345,2234], element: elementBianary)
print("2. Via Bianary Search, element: \(elementBianary) at index : \(index)")
