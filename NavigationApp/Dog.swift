//
//  Dog.swift
//  NavigationApp
//
//  Created by Yakup Suda on 11.07.2023.
//

import Foundation

struct Dog: Identifiable, Hashable {
    var id = UUID()
    let name : String
    let age : Double
    let kind : String
    
}

let dogs : [Dog] = [Dog(name: "Boncuk", age: 2, kind: "Karabaş"), Dog(name: "Daisy", age: 1.5, kind: "Golden"), Dog(name: "Sarıbaş", age: 3, kind: "Kangal")]
