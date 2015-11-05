//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func | <T, U> (left: T, right: T -> U) -> U {
    return right(left)
}

let show = { print($0) }

str | { $0.characters.count } | show