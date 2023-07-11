//
//  ContentView.swift
//  NavigationApp
//
//  Created by Yakup Suda on 11.07.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            List{
                Section("Dogs"){
                    ForEach(dogs){ dog in
                        NavigationLink(dog.name, value: dog)
                    }
                }
                Section("Cats"){
                    ForEach(cats){ cat in
                        NavigationLink(cat.name, value: cat)
                    }
                }
            }.navigationDestination(for: Dog.self) { dog in
                List{
                    Text("Köpeğin Adı: " + dog.name)
                    Text("Köpeğin Yaşı: " + String(dog.age))
                    Text("Köpeğin Cinsi: " + dog.kind)
                }
            }
            .navigationDestination(for: Cat.self) { cat in
                List{
                    Text("Kedinin Adı: " + cat.name)
                    Text("Kedinin Yaşı: " + String(cat.age))
                    Text("Kedinin Cinsi: " + cat.kind)
                }
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
