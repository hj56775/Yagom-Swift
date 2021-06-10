/* 클래스, 구조체/열거형 비교 */

import Swift

//MARK: - Class vs Struct/Enum

struct ValueType{
    var property = 1
}

class ReferenceType {
    var property = 1
}

let firstStructInstance = ValueType()
var secondStructInstace = firstStructInstance
secondStructInstace.property = 2

print("first struct instance property : \(firstStructInstance.property)") // 1
print("second struct instance property : \(secondStructInstace.property)") // 2

let firstClassInstance = ReferenceType()
var secondClassInstace = firstClassInstance
secondClassInstace.property = 2

print("first class instance property : \(firstClassInstance.property)") // 2
print("second class instance property : \(secondClassInstace.property)") // 2
