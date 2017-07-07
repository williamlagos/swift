/* Basic samples and usage of Swift 4 Standard language and library *
 * William Oliveira de Lagos <william.lagos@outlook.com>            */


/* Variables and constant declarations, with or *
 * without type explicit declaration, multiline *
 * strings, dictionaries, arrays & other simple *
 * structures.                                  */

let latitude: Double = 30.0000
let great = """
This is a great string
with multiple lines.
"""

let defacto: String = "test"

let dict = [
  "Test": "Value",
  "Teste": "Valor",
]

let array = [8,16,32,64,128]

/* Basic control flow structure for repetitions *
 * and conditionals over base structures.       */

for item in array {
  if item < 32 {
    print("LO")
  } else {
    print("HI")
  }
}

var optional: String? = nil

print("Empty \(optional ?? defacto)")

optional = "Value"

print("Not Empty \(optional ?? defacto)")

print("Hello, World at \(latitude)!")
print(great)

switch defacto {
  case "test":
    print("This is a test")
  case "release":
    print("This isn't a test")
  default:
    print("Weird case")
}

for (k, v) in dict {
  print(k)
  print(v)
}

var n = 0
while n < 50 {
  n += 1
}

print(n)

var m = 0
repeat {
  m += 1
} while m < 50

print(m)

var t = 0
for i in 0..<5 {
  print(i)
  t += i
}

print(t)
