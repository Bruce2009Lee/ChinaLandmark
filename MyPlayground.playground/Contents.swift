import UIKit
import Contacts

var str = "Hello, playground"


class Contact: ObservableObject {
    @Published var name: String
    @Published var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    func haveBirthday() -> Int {
        age += 1
        return age
    }
}


let john = Contact(name: "John Appleseed", age: 24)

//print(john.haveBirthday())

//let names = ["Anna", "Alex", "Brian", "Jack"]
//for name in names[2...] {
//    print(name)
//}
//print("----")
//for name in names[...2] {
//    print(name)
//}

//
//let unusualMenagerie = "Koala 🐨, Snail 🐌, Penguin 🐧, Dromedary 🐪"
//print("unusualMenagerie has \(unusualMenagerie.count) characters")


let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

var reversedNames = names.sorted(by:{ (s1: String, s2: String) -> Bool in
                                        return s1 > s2
                                    }
)

//等价于：reversedNames = names.sorted(by: { s1, s2 in return s1 > s2 } )

//(String,String) -> Bool
func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}

//
//let digitNames = [
//    0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
//    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
//]
//let numbers = [16, 58, 510]
//
//let strings = numbers.map() {
//    (number) -> String in
//    var number = number
//    var output = ""
//    repeat {
//        output = digitNames[number % 10]! + output
//        number /= 10
//    } while number > 0
//    return output
//}
//print(strings)
//// strings 常量被推断为字符串类型数组，即 [String]
//// 其值为 ["OneSix", "FiveEight", "FiveOneZero"]

//
//class StepCounter {
//    var totalSteps: Int = 0 {
//        willSet(newTotalSteps) {
//            print("将 totalSteps 的值设置为 \(newTotalSteps)")
//        }
//        didSet {
//            if totalSteps > oldValue  {
//                print("增加了 \(totalSteps - oldValue) 步")
//            }
//        }
//    }
//}
//let stepCounter = StepCounter()
//stepCounter.totalSteps = 200
//// 将 totalSteps 的值设置为 200
//// 增加了 200 步
//stepCounter.totalSteps = 360
//// 将 totalSteps 的值设置为 360
//// 增加了 160 步
//stepCounter.totalSteps = 896
//// 将 totalSteps 的值设置为 896
//// 增加了 536 步



func findIndex(ofString valueToFind: String, in array: [String]) -> Int? {
    for (index, value) in array.enumerated() {
        if value == valueToFind {
            return index
        }
    }
    return nil
}

func findIndexT<T: Equatable>(of valueToFind: T, in array:[T]) -> Int? {
    for (index, value) in array.enumerated() {
        if value == valueToFind {
            return index
        }
    }
    return nil
}

let strings = ["cat", "dog", "llama", "parakeet", "terrapin"]
if let foundIndex = findIndexT(of: "llama", in: strings) {
    print("The index of llama is \(foundIndex)")
}
