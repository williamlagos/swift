/* Structures samples and usage of Swift 4 Standard language and library *
 * William Oliveira de Lagos <william.lagos@outlook.com>                 */


/* Protocols and inheritance in base structures *
 * (struct, class and enum).                    */

protocol Example {
  var desc: String { get }
  mutating func adjust()
}

class Sample: Example {
  var desc: String = "A very simple class."
  var prop: Int = 69105
  func adjust() { desc += " Now 100% adjusted." }
}

var a = Sample()
a.adjust()
print(a.desc)

struct SampleStruct: Example {
  var desc: String = "A simple structure"
  mutating func adjust() { desc += " (adjusted)" }
}

var b = SampleStruct()
b.adjust()
print(b.desc)

/* Use of extensions on base types              */

extension Int: Example {
  var desc: String { return "The number \(self)" }
  mutating func adjust() { self += 42 }
}

print(7.desc);

let protocolValue: Example = a
print(protocolValue.desc)
// print(protocolValue.prop)

/* Error handling and construction over do catch, try, and *
 * enums to define error codes.                            */

enum PrinterError: Error {
  case outOfPaPer
  case noToner
  case onFire
}

func send(job: Int, toPrinter printerName: String) throws -> String {
  switch printerName {
  case "Never has Paper": throw PrinterError.outOfPaPer
  case "Never has Toner": throw PrinterError.noToner
  case "Printer on fire": throw PrinterError.onFire
  default: return "Job sent"
  }
}

do {
  let response = try send(job: 1040, toPrinter: "Never has Toner")
  print(response)
} catch {
  print(error)
}

do {
  let response = try send(job: 1440, toPrinter: "Printer on fire")
  print(response)
} catch PrinterError.onFire {
  print("This printer is on fire!")
} catch let printerError as PrinterError {
  print("Printer error: \(printerError)")
} catch {
  print(error)
}

let printerSuccess = try? send(job: 1884, toPrinter: "Gutenberg")
let printerFailure = try? send(job: 1885, toPrinter: "Never has Paper")

print(printerSuccess ?? "failure")
print(printerFailure ?? "failure")

/* Use of defer operator to execute the last    *
 * operation before return.                     */

var fridgeOpen = false
let fridgeContent = ["coffee", "eggs", "bacon"]

func fridgeContains(_ food: String) -> Bool {
  fridgeOpen = true
  defer { fridgeOpen = false }
  return fridgeContent.contains(food)
}

print(fridgeContains("bacon"))
print(fridgeOpen)

/* Use of generics and checkers on functions    */

func array<Item>(repeating item: Item, times: Int) -> [Item] {
  var result = [Item]()
  for _ in 0..<times {
    result.append(item)
  }
  return result
}

print(array(repeating: "knock", times: 4))

enum OptionalValue<Wrapped> {
  case none
  case some(Wrapped)
}

var possibleInteger: OptionalValue<Int> = .none
possibleInteger = .some(100)
print(possibleInteger)

func commonElements<T: Sequence, U: Sequence>(_ lhs: T, _ rhs: U) -> Bool
  where T.Iterator.Element: Equatable, T.Iterator.Element == U.Iterator.Element {
  for lhsItem in lhs {
    for rhsItem in rhs {
      if lhsItem == rhsItem {
        return true
      }
    }
  }
  return false
}

print(commonElements([1,2,3], [3]))
