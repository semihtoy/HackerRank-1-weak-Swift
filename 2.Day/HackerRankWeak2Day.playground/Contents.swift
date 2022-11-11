import UIKit

//Lonely Integer
func lonelyinteger(a: [Int]) -> Int {
    var uniqNumber = 0
    for(index, number) in a.enumerated() {
        var array = a
        array.remove(at: index)
        if !array.contains(number) {
            uniqNumber = number
        }
    }
    return uniqNumber
}

// Diagonal Difference
func diagonalDifference(arr: [[Int]]) -> Int {
    let matrix = arr[0].count
    var firstArr: [Int] = []
    var secondArr: [Int] = []
    for i in 0...matrix - 1 {
        firstArr.append(arr[i][i])
        secondArr.append(arr[i][matrix - 1 - i])
    }
    let total = firstArr.reduce(0, +) - secondArr.reduce(0, +)
    return abs(total)
}

//Counting Sort
//Gelen sayı listesinde 0'dan 100'e kadar olan sayıların kaç kez tekrarlandığını soruyor.
//It asks how many times the numbers 0 to 100 are repeated in the incoming number list
func countingSort(arr: [Int]) -> [Int] {
    var elementCount: [Int:Int] = [:]
    var resultArr: [Int] = []
    for number in arr {
        if elementCount[number] != nil {
            elementCount[number]! += 1
        } else {
            elementCount[number] = 1
        }
    }
    for index in 0...99 {
        if let count = elementCount[index] {
            resultArr.append(count)
        } else {
            resultArr.append(0)
        }
    }
    return resultArr
}

