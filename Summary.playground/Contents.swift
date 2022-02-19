// YagomSyntax 요약본




// func, method, variable, constant

// class, struct, enum, extension

// print, dump

// \()

// var, let

// Bool, Int, UInt, Float, Double, Character, String

// Any, AnyObject, nil

// Array, Dictionary, Set

// func 함수이름(매개변수1 이름: 매개변수1 타입, 매개변수2 이름: 매개변수2 타입 = 매개변수 기본값) -> 반환값 {
// return
// 반환값
// }

// func 함수이름(전달인자 레이블 매개변수1 이름: 매개변수1 타입, 전달인자 레이블 매개변수2 이름: 매개변수2 타입) -> 반환값 타입 {
// 함수 구현부
// return
//}

// 가변 매개변수
// func 함수이름(매개변수1 이름: 매개변수1 타입, 전달인자 레이블 매개변수2 이름: 매개변수2 타입...) -> 반환타입 {
// 함수 구현부
// return
// }

// 조건문 - if/else if/else
// if condition {
// statements
// code
// } else if condition {
// statements
// code }
// else {
// statements
// code
// }

// 조건문 - switch
// switch value {
// case pattern:
// code
// default:
// code
// }

// 반복문 - for-in
// for item in items {
// code
// }

// 반복문 - while
// while condition {
// code
// }

// 반복문 - repeat-while
// repeat {
// code
// } while condition

// 옵셔널
// func someFunction(someOptionalParam: Int?) {
// ...
// }
// -> someOptionalParam can be nil

// func someFunction(someOptionalParam: Int) {
// ...
// }
// -> someOptionalParam must not be nil

// 옵셔널 추출
/*
func printName(_ name: String) {
    print(name)
}

var myName: String? = "Jun"
var yourName: String? = "Yuri"

print(myName)
print(yourName)
// Optional("Jun")
// Optional("Yuri")

print(myName!)
print(yourName!)
// Jun
// Yuri
// 옵셔널 강제 추출. !를 쓴다.

if let name = myName, let friend = yourName {
    print("\(name) and \(friend)")
}
// 옵셔널 바인딩.
*/

// 구조체 Struct
// struct 이름 {
// 구현부
// }
// 인스턴스 가변 프로퍼티, 인스턴스 불변 프로퍼티, 타입 프로퍼티, 인스턴스 메소드, 타입 메소드

// 클래스 class
// class 이름 {
// 구현부
// }
// 인스턴스 가변 프로퍼티, 인스턴스 불변 프로퍼티, 타입 프로퍼티, 인스턴스 메소드, 타입 메소드(static func, class func)
// 가변 프로퍼티를 let으로 설정해도 struct와 달리 변경이 가능하다.

/*
struct Student {
    var name: String = "Unknown"
    var `class`: String = "Swift"
    
    static func selfIntroduce() {
        print("학생타입입니다.")
    }
    
    func selfIntroduce() {
        print("저는 \(self.class)반 \(name)입니다.")
    }
}

Student.selfIntroduce()

var jun: Student = Student()
jun.name = "jun"
jun.class = "스위프트"
jun.selfIntroduce()

let yuri: Student = Student()
// yuri.name = "yuri"
// yuri.class = "스위프트"
yuri.selfIntroduce()
*/

// enum 열거형
// enum 이름 {
// case 이름1
// case 이름2
// case 이름3, 이름4, ...
// }

//               class            struct            enum

// type        reference          value             value

// subclassing     O                X                 X

// extension       O                O                 O
