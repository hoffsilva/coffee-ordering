//
//  Order.swift
//  Coffee ordering
//
//  Created by Hoff Henry Pereira da Silva on 08/03/21.
//

import Foundation

struct Order: Codable {
    let name: String
    let email: String
    let type: CoffeeType
    let size: CoffeeSize
}
