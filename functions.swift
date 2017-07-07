/* Function samples and usage of Swift 4 Standard language and library *
 * William Oliveira de Lagos <william.lagos@outlook.com>               */


/* Use of labels and second options on funcions signatures, *
 * as well as return type inference over declaration.       */

func hello(_ name: String, _ location: String) -> String {
  return "Hello \(name) at \(location)!"
}

// let result = hello(name: "William", location: "New York")
let result = hello("William", "New York")

print(result)

func tuples() -> (x: Int, y: Int, z: Int) {
  let x = 1
  let y = x * 2
  let z = x * 4
  return (x, y, z)
}

let tpl = tuples()

print(tpl)
print(tpl.y)
print(tpl.2)

/* Use of internal functions and referencing over composite *
 * functions, as well as anonymous internal functions.      */

func internals() -> ((Int) -> Int) {
  func incrementer(number: Int) -> Int {
    return number + 1
  }
  return incrementer
}

var increment = internals()
let inc = increment(7)
print(inc)

func composite(conditional: (Int) -> Bool) -> String {
  if conditional(5) {
    return "Cool"
  } else {
    return "Not Cool"
  }

}

func less(number: Int) -> Bool {
  return number < 10
}

let cmp = composite(conditional: less)
print(cmp)

var numbers = [5,3,2,4,1]

var exponentials = numbers.map({ (number: Int) -> Int in
  var p = number - 1;
  var n = 3
  while p > 0 {
    n *= 3
    p -= 1
  }
  return n
})

var multiples = numbers.map({ number in number * 3 })
var sort = numbers.sorted { $1 > $0 }

print(numbers)
print(multiples)
print(exponentials)
print(sort)
