import UIKit

// Plus Minus
func plusMinus(arr: [Int]) -> Void {
    var positiveNumberCount = 0
    var negativeNumberCount = 0
    var zeroNumberCount = 0
    for number in arr {
        if number > 0 {
            positiveNumberCount = positiveNumberCount + 1
        } else if number < 0 {
            negativeNumberCount = negativeNumberCount + 1
        } else {
            zeroNumberCount = zeroNumberCount + 1
        }
    }
    print(String(format: "%0.6f",(Double(positiveNumberCount) / Double(arr.count))))
    print(String(format: "%0.6f",(Double(negativeNumberCount) / Double(arr.count))))
    print(String(format: "%0.6f",(Double(zeroNumberCount) / Double(arr.count))))
}

// Mini-Max Sum
func miniMaxSum(arr: [Int]) -> Void {
    var sorted = arr.sorted()
    let min = sorted.dropLast().reduce(0, +)
    let max = sorted.dropFirst().reduce(0, +)
    print(min,max)
}

//Time Conversion my solution
func timeConversion(s: String) -> String {
    var timeArr = [String]()
    var time = ""
    if s.contains("AM") {
        let times = s.dropLast(2)
        timeArr = times.components(separatedBy: ":")
        let calculate = ((Int(timeArr[0]) ?? 0) + 12) % 12
        let strcalculate = calculate < 10 ? ("0" + "\(calculate)") : "\(calculate)"
        timeArr[0] = strcalculate
    } else {
        timeArr = s.dropLast(2).components(separatedBy: ":")
                    let calculate = ((Int(timeArr[0]) ?? 0) == 12 ? (Int(timeArr[0]) ?? 0) + 0 : (Int(timeArr[0]) ?? 0) + 12) % 24
        let strcalculate = calculate < 10 ? ("0" + "\(calculate)") : "\(calculate)"
        timeArr[0] = strcalculate
    }
    
    for number in timeArr {
        time = time + "\(number == "0" ? "00" : number)" + ":"
    }
    return String(time.dropLast())
}

//Time Conversion someone else's solution. see Discussions
func timeConversion(s: String) -> String {
    // Write your code here
    let dateFortmat = DateFormatter()
    dateFortmat.dateFormat = "h:mm:sa"
    let inputDate = dateFortmat.date(from: s)
    dateFortmat.dateFormat = "HH:mm:ss"
    return dateFortmat.string(from: inputDate!)
}

// Mock Test Median
func findMedian(arr: [Int]) -> Int {
    let sorted = arr.sorted()
    let med = Int(arr.count / 2)
    return sorted[med]
}
