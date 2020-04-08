import Foundation

/**
 Struct 는 Value
 Class 는 주소값 Reference(참조형)
 */

struct SizeValue {
    var width = 0.0
    var height = 0.0
    
    // Instance 비교 연산자
    static func ==(lhs: SizeValue, rhs: SizeValue) -> Bool {
        return lhs.width == rhs.width && lhs.height == rhs.height
    }
    
    static func !=(lhs: SizeValue, rhs: SizeValue) -> Bool {
        return !(lhs == rhs)
    }
}

class SizeObject {
    var width = 0.0
    var height = 0.0
    
    static func ==(lhs: SizeObject, rhs: SizeObject) -> Bool {
        return lhs.width == rhs.width && lhs.height == rhs.height
    }
    
    static func !=(lhs: SizeObject, rhs: SizeObject) -> Bool {
        return !(lhs == rhs)
    }
}

var v = SizeValue()
var v2 = v
v2.width = 1.0
v2.height = 2.0
//dump(v)
//dump(v2)

v == v2
v != v2

var o = SizeObject()
var o2 = o
o2.width = 1.0
o2.height = 2.0

//dump(o)
//dump(o2)

o == o2
o === o2

var o3 = SizeObject()
o == o3
o === o3
