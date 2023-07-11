//
//  SecondView.swift
//  NavigationApp
//
//  Created by Yakup Suda on 11.07.2023.
//

import SwiftUI

struct SecondView: View {
    @State var path : [Dog] = []
    var body: some View {
        
        
        
        NavigationStack(path: $path){
            List(dogs){ dog in
                NavigationLink(dog.name,value: dog)
            }.navigationDestination(for: Dog.self) { dog in
                VStack{
                    Text(dog.name)
                    /*
                    Button("Go Back") {
                        self.path = [] // ilk sayfaya dönmke için
                    }
                     */
                    Button("Add to path") {
                        path = [dogs[0], dogs[1]]
                    }
                }
                
            }
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
