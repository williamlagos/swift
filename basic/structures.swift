/* Structures samples and usage of Swift 4 Standard language and library *
 * William Oliveira de Lagos <william.lagos@outlook.com>                 */


/* Use cases of enumeration with functions, numbers and strings. */

enum Rank: Int {
  case ace = 1
  case two, three, four, five, six, seven, eight, nine, ten
  case jack, queen, king
  func desc() -> String {
    switch self {
    case .ace:
      return "ace"
    case .jack:
      return "jack"
    case .queen:
      return "queen"
    case .king:
      return "king"
    default:
      return String(self.rawValue)
    }
  }
}

let ace = Rank.ace

print(ace);
print(ace.rawValue);

print(Rank.two);
print(Rank.two.rawValue)
print(Rank.king.desc())

if let rank = Rank(rawValue: 3) {
  print(rank.desc())
}

enum Suit {
  case spades, hearts, diamonds, clubs
  func desc() -> String {
    switch self {
    case .spades:
      return "spades"
    case .hearts:
      return "hearts"
    case .diamonds:
      return "diamonds"
    case .clubs:
      return "clubs"
    }
  }
}

let hearts = Suit.hearts

print(hearts)
print(hearts.desc())

/* Enums with composite values, and structs for combination with *
 * simple enumerations for structure composition.                */

enum Response {
  case result(String, String)
  case failure(String)
}

let success = Response.result("06:00", "18:00")
let failure = Response.failure("Out of cheese.")

switch success {
case let .result(sunrise, sunset):
  print("Sunrise is at \(sunrise) and sunset is at \(sunset).")
case let .failure(message):
  print("Failure... \(message)")
}

struct Card {
  var rank: Rank
  var suit: Suit
  func desc() -> String {
    return "The \(rank.desc()) of \(suit.desc())"
  }
}

let threeSpades = Card(rank: .three, suit: .spades)
print(threeSpades.desc())
