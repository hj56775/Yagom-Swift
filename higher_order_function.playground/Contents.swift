/* 고차함수 */

import Swift

// 전달인자로 함수를 전달받거나 함수실행의 결과를 함수로 반환하는 함수
// 함수실행의 결과를 함수를 반환하는 함수

// 스위프트 표준 라이브러리에서 제공하는 유용한 고차함수에 대해 알아봅니다

// map, filter, reduce
// 컨테이너 타입(Array, Set, Dictionary 등)에 구현되어 있습니다

//MARK: - map

// 컨테이너 내부의 기존 데이터를 변형(transform)하여 새로운 컨테이너 생성

let numbers : [Int] = [0, 1, 2, 3, 4]
var doubledNumbers : [Int] = [Int]()
var strings : [String] = [String]()

// for 구문 사용
for number in numbers{
    doubledNumbers.append(number * 2)
    strings.append("\(number)")
}

print(doubledNumbers)
print(strings)

// map 메소드 사용
// numbers의 각 요소를 2배하여 새로운 배열 반환
doubledNumbers = numbers.map({(number : Int) -> Int in
    return number * 2
})

// numbers의 각 요소를 문자열로 변환하여 새로운 배열 반환
strings = numbers.map({(number : Int) -> String in
    return "\(number)"
})

print(doubledNumbers)
print(strings)

// 매개변수, 반환 타입, 반환 키워드(return) 생략, 후행 클로저
doubledNumbers = numbers.map{ $0 * 2 }
print(doubledNumbers)

//MARK: - filter
// 컨테이너 내부의 값을 걸러서 새로운 컨테이너로 추출

//for 구문 사용

// 변수 사용에 주목하세요
var filtered : [Int] = [Int]()

for number in numbers {
    if number % 2 == 0 {
        filtered.append(number)
    }
}

print(filtered)

// filter 메서드 사용
// numbers의 요소 중 짝수를 걸러내어 새로운 배열로 반환
let evenNumbers: [Int] = numbers.filter {(number : Int) -> Bool in
    return number % 2 == 0
}

print(evenNumbers)

// 메게변수, 반환 타입, 반환 키워드(return) 생략, 후행 클로저
let oddNumbers : [Int] = numbers.filter { $0 % 2 == 1}

print(oddNumbers)

// MARK: - reduce
// 컨테이너 내부의 콘텐츠를 하나로 통합

let someNumbers: [Int]
someNumbers = [2, 8, 15]

// for 구문 사용
// 변수 사용에 주목하세요
var result: Int = 0

// someNumbers의 모든 요소를 더합니다
for number in someNumbers{
    result += number
}

print(result)

// reduce 메서드 사용

// 초깃값이 0이고 someNumbers 내부의 모든 값을 더합니다.
let sum : Int = someNumbers.reduce(0, {(first : Int, second: Int) -> Int in
    print("\(first) + \(second)")
    return first + second
})

print(sum)

// 초깃값이 0이고 someNumbers 내부의 모든 값을 뺍니다.
let subtract : Int = someNumbers.reduce(0, {(first : Int, second: Int) -> Int in
    print("\(first) - \(second)")
    return first - second
})

print(subtract) // -25

// 초기값이 3이고 someNumbers 내부의 모든 값을 더합니다
let sumFromThree = someNumbers.reduce(3){$0 + $1}

print(sumFromThree)


