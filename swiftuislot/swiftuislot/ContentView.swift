//
//  ContentView.swift
//  swiftuislot
//
//  Created by Sunji Kim on 2022/02/02.
//

import SwiftUI

struct ContentView: View {
    @State var credits = 1000;
    @State var first = "star"
    @State var second = "star"
    @State var third = "star"
    
    var body: some View {
        VStack{
            Text("SwiftUI Slots")
                .font(.largeTitle).padding()
            Spacer()
            Text("Credits:" + String(credits))
            Spacer()
            HStack{
                Image(first).resizable().aspectRatio(contentMode: .fit)
                Image(second).resizable().aspectRatio(contentMode: .fit)
                Image(third).resizable().aspectRatio(contentMode: .fit)
            }
            Spacer()
            Button {
                // 이미지를 교체하고
                let map:[String] = ["star", "cherry", "apple"]
                for i in 0 ..< 3 {
                    var rand = Int.random(in: 0...2)
                    
                    if i == 0 {
                        first = map[rand]
                    } else if i == 1 {
                        second = map[rand]
                    } else if i == 2 {
                        third = map[rand]
                    }
                }
                
                // 점수 업데이트
                if (first == second) && (second == third) {
                    // 셋 다 일치하면 점수를 얻는다
                    credits += 50
                }
                else
                {
                    credits -= 10
                }
            
                
            } label: {
                ZStack{
                    Capsule().fill(Color.pink).frame(width: 100.0, height: 50.0, alignment: .center)
                    Text("Spin").font(.headline).foregroundColor(Color.white)
                }
                
            }

            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
