import UIKit

let 🐮 = "🐮"
let 🥔 = "🥔"
let 🐔 = "🐔"
let 🌽 = "🌽"
let 🍔 = "🍔"
let 🍟 = "🍟"
let 🍗 = "🍗"
let 🍿 = "🍿"
let 💩 = "💩"

func cook(_ rawFood: String) -> String {
    switch rawFood {
    case 🌽:
        return 🍿
    case 🐔:
        return 🍗
    case 🐮:
        return 🍔
    case 🥔:
        return 🍟
    default:
        return ""
    }
    
}

func isVegeatrian(_ rawFood: String) -> Bool {
    switch rawFood {
    case  🍟, 🍿 :
        return true
    case 🍗, 🐮:
        return false
    default:
        return false
    }
}

func eat(_ food: String) -> String {
    return 💩
}


let food = [🐮, 🥔, 🐔, 🌽].map{ cook($0) }
let vegetarianFood = food.filter{ isVegeatrian($0)}
let reducedTo = food.reduce("") { (_, food) -> String in
    return eat(food)
}

print("food..:\(food)")
print("vegetarianFood..: \(vegetarianFood)")
print("reducedTo..:\(reducedTo)")
