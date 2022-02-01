//
//  ContentView.swift
//  ButtonDemo
//
//  Created by Sunji Kim on 2022/02/01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            // Button instance with closure
            Button("Click Me", action:{
                print("Hello World")
            })
            
            // Button instance with trailing closure (이렇게 쓰는 걸 더 추천하는 듯?)
            Button("Click Me") {
                print("Hello World")
            }
            
            // Button instance with label view
            Button(action: {
                print("Hello World")
            }, label: {
                HStack{
                    Image(systemName: "pencil")
                    Text("Edit")
                }
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
