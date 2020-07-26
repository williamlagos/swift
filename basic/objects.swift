/* Class and object samples and usage of Swift 4 Standard language and library *
 * William Oliveira de Lagos <william.lagos@outlook.com>                       */


/* Basic usage of classes and subclasses, with inheritance, override *
 * functions, initializers, deinitializers and properties.           */

class SimplePolygon {
  var sides = 0
  func desc() -> String {
    return "Polygon with \(sides) sides"
  }
}

var shape = SimplePolygon()
shape.sides = 7
let d1 = shape.desc()
print(d1)

class Polygon {
  var sides: Int = 0
  var name: String

  init(name: String) {
    self.name = name
  }

  func desc() -> String {
    return "Polygon with \(sides) sides"
  }
}

var newshape = Polygon(name: "Pentagon")
newshape.sides = 5
let d2 = newshape.desc()
print(d2)

class Square: Polygon {
  var length: Double

  init(length: Double, name: String) {
    self.length = length
    super.init(name: name)
    sides = 4
  }

  func area() -> Double {
    return length * length
  }

  override func desc() -> String {
    return "A square with sides of length \(length)"
  }
}

let square = Square(length: 7.0, name: "Simple square")
let a1 = square.area()
let d3 = square.desc()

print(a1)
print(d3)

class Triangle: Polygon {
  var length: Double = 0.0

  init(length: Double, name: String) {
    self.length = length
    super.init(name: name)
    sides = 3
  }

  var perimeter: Double {
    get { return 3.0 * length }
    set { length = newValue / 3.0 }
  }

  override func desc() -> String {
    return "An equilateral triangle with sides of length \(length)"
  }
}

var tri = Triangle(length: 5.0, name: "Simple triangle")
print(tri.perimeter)
tri.perimeter = 9.0
print(tri.length)

/* Special use of conditionals on properties to guarantee certain constraints */

class TriangleSquare {
  var triangle: Triangle { willSet { square.length = newValue.length } }
  var square: Square { willSet { triangle.length = newValue.length } }
  init(size: Double, name: String) {
    square = Square(length: size, name: name)
    triangle = Triangle(length: size, name: name)
  }
}

var trisq = TriangleSquare(size: 10, name: "Another polygon test")
print(trisq.triangle.length)
print(trisq.square.length)

trisq.square = Square(length: 50, name: "Larger square")
print(trisq.triangle.length)

let optionalSquare: Square? = Square(length: 2.5, name: "Optional square")
let length = optionalSquare?.length

print(length ?? 0.0)
