// YagomSyntax 요약본

import Foundation




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



// closure - 기본
// { (매개변수 목록) -> 반환타입 in
// 실행코드
// }



// closure - 축약
// 후행 클로저
// 반환타입 생략
// 단축 인자이름 $0 + $1
// 암시적 반환타입



// property 프로퍼티
// 저장 프로퍼티
// 연산 프로퍼티
// 인스턴스 프로퍼티
// 타입 프로퍼티
/*
struct Student {
    var name: String = ""
    var `class`: String = "swift"
    var koreanAge: Int = 0
    // 인스턴스 저장 프로퍼티
    
    var westernAge: Int {
        get {
            return koreanAge - 1
        }
        set(inputValue) {
            koreanAge = inputValue + 1
        }
    }
    // 인스턴스 연산 프로퍼티
    
    static var typeDescription: String = "학생"
    // 타입 저장 프로퍼티
    
    var selfIntroduction: String {
        get {
            return "저는 \(self.class)반 \(name)입니다."
        }
    }
    // 읽기전용 인스턴스 연산 프로퍼티
    
    static var selfIntroduction: String {
        return "학생타입입니다."
    }
    // 읽기전용 타입 프로퍼티
    }

print(Student.selfIntroduction)

var jun = Student()
jun.name = "jun"
jun.koreanAge = 26
print(jun.selfIntroduction)
print("저의 한국나이는 \(jun.koreanAge)살 이고, 미국나이는 \(jun.westernAge)살 입니다.")
*/




// property observer 프로퍼티 감시자
// willSet(newValue) - 바뀔 값, didSet(oldValue) - 바뀐 값
/*
struct Money {
    var currencyRate: Double = 1100 {
        willSet(newRate) {
            print("환율이 \(currencyRate)에서 \(newRate)로 변경될 예정이다.")
        }
        didSet(oldRate) {
            print("환율이 \(oldRate)에서 \(currencyRate)로 변경되었다.")
        }
    }
    
    var dollar: Double = 0 {
        willSet {
            print("\(dollar)달러에서 \(newValue)달러로 변경될 예정이다.")
        }
        didSet {
            print("\(oldValue)달러에서 \(dollar)달러로 변경되었다.")
        }
    }
    
    var won: Double {
        get {
            return dollar * currencyRate
        }
        set {
            dollar = newValue / currencyRate
        }
    }
}

var moneyInMyPocket: Money = Money()
moneyInMyPocket.currencyRate = 1150
moneyInMyPocket.dollar = 10
print(moneyInMyPocket.won)
*/




// inheritance 상속
// class 이름: 상속받을 클래스 이름 {
// 구현부
// }
// 스위프트 상속은 클래스, 프로토콜에서 가능
// 구조체, 열거형에서 불가능
// static 메소드, final class 메소드는 상속 불가능.
// class 메소드는 상속 가능.
// 재정의 할때 override func 쓰면 된다.
// final func는 재정의 불가.
// 저장 프로퍼티는 재정의 불가.
 /*
class Person {
    var name: String = ""
    
    func selfIntroduce() {
        print("저는 \(name)입니다.")
    }
    
    final func sayHello() {
        print("hello")
        
    }
    
    static func typeMethod() {
        print("type method - static")
    }
    
    class func classMethod() {
        print("type method - class")
    }
    
    final class func finalClassMethod() {
        print("type method - final class")
    }
}

class Student: Person {
    var major: String = ""
    
    override func selfIntroduce() {
        print("저는 \(name)이고, 전공은 \(major)입니다.")
    }
    
//    override static func typeMethod() {
//        print("overriden type method - static")
//    }
    
    override class func classMethod() {
        print("overriden type method - class")
    }
    
//    override final class func finalClassMethod() {
//        print("overriden type method - final class")
//    }
    
}

let jun = Person()
let yuri = Student()

jun.name = "jun"

yuri.name = "yuri"
yuri.major = "computer science"

jun.selfIntroduce()
yuri.selfIntroduce()
*/



// init - 이니셜라이저
// 프로퍼티 기본값을 지정하기 어려운 경우에는
// 이니셜라이저를 통해 인스턴스가 가져야 할 초기값을 전달할 수 있다.

// deinit - 디이니셜라이저
// 클래스의 인스턴스가 메모리에서 해제되는 시점에 호출된다
// 인스턴스가 해제되는 시점에 해야할 일을 구현할 수 있다.



// 옵셔널 체이닝
// 옵셔널 체이닝은 옵셔널 요소 내부의 프로퍼티로
// 또 다시 옵셔널이 연속적으로 연결되는 경우 유용하게 사용할 수 있다.

// nil 병합 연산자


// 타입 캐스팅
// 스위프트 타입 캐스팅은 인스턴스의 타입을 확인하는 용도
// 또는 클래스의 인스턴스를 부모 혹은 자식 클래스의 타입으로 사용할 수 있는지
// 확인하는 용도로 사용한다.
// is, as를 사용
// 타입 확인은 is를 사용

// 업캐스팅
// as를 사용하여 부모 클래스의 인스턴스로 사용할 수 있도록
// 컴파일에게 타입정보를 전달한다.
// Any 혹은 AnyObject로도 타입정보를 변환할 수 있다.
// 암시적으로 처리되므로 생략해도 무방하다.

// 다운 캐스팅
// as? 또는 as!를 사용하여 자식 클래스의 인스턴스로 사용할 수 있도록
// 컴파일러에게 인스턴스의 타입정보를 전환해준다.
// 조건부 다운 캐스팅 - as?
// 강제 다운 캐스팅 = as!


// assert, guard

// aseert
// 애플리케이션이 동작 도중에 생성하는 다양한 결과값을
// 동적으로 확인하고 안전하게 처리할 수 있도록
// 확인하고 빠르게 처리할 수 있다.

// guard
// guard를 사용하여 잘못된 값의 전달 시
// 특정 실행구문을 빠르게 종료한다.
// 디버깅 모드 뿐만 아니라 어떤 조건에서도 동작한다.
// guardd의 else 블럭 내부에는
// 특정 코드블럭을 종료하는 지시어(return, break등)가 꼭 있어야 한다.
// 타입 캐스팅, 옵셔널과도 자주 사용된다.
// 그 외 단순 조건 판단 후 빠르게 종료할 때도 용이하다.

// protocol 프로토콜
// protocol 프로토콜 이름 {
// 정의부
// }



// extension 익스텐션
// extension 확장할 타입 이름 {
// 구현부
// }

// 익스텐션은 구조체, 클래스, 열거형, 프로토콜에
// 새로운 기능을 추가할 수 있는 기능.
// 저장 프로퍼티, 연산 프로퍼티, 인스턴스 메소드, 타입 메소드, 이니셜라이저, 서브스크립트, 중첩 타입, 특정 프로토콜을 준수할 수 있도록 기능 추가가 가능하다.
