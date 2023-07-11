//
//  Cat.swift
//  NavigationApp
//
//  Created by Yakup Suda on 11.07.2023.
//

import Foundation

struct Cat : Identifiable, Hashable {
    var id = UUID()
    let name : String
    var age : Double
    var kind : String
}
let cats: [Cat] = [Cat(name: "Tekir", age: 1, kind: "Tekir"), Cat(name: "Duman", age: 2, kind: "Van Kedisi")]
