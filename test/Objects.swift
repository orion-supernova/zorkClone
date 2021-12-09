//
//  Character.swift.swift
//  test
//
//  Created by Murat Can KOÇ on 7.12.2021.
//

import Foundation

struct Player {
    var name: String
    var health: Int
    var Items: [Item]?
}

enum Item {
    case food
    case drink
    case weapon
}
enum Direction {
    case north
    case south
    case east
    case west
}
enum Commands {
    case eat
    case drink
    case go
    case take
}
