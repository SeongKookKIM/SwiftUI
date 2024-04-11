//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by SeongKook on 2024/04/08.
//

import SwiftUI


struct ContentView: View {
    @State var selectedView = 1
    
    var body: some View {
        VStack {
            HStack {
                Button("1") {
                    selectedView = 1
                }
                Button("2") {
                    selectedView = 2
                }
                Button("3") {
                    selectedView = 3
                }
                Button("4") {
                    selectedView = 4
                }
                Button("5") {
                    selectedView = 5
                }
                Button("6") {
                    selectedView = 6
                }
            }
            TabView (selection: $selectedView) {
                Text("One")
                    .tabItem {
                        Image(systemName: "heart.fill")
                        Text("one")
                    }.tag(1)
                Text("Two")
                    .tabItem {
                        Image(systemName: "hare.fill")
                        Text("two")
                    }.tag(2)
                Text("Three")
                    .tabItem {
                        Image(systemName: "tortoise.fill")
                        Text("three")
                    }.tag(3)
                Text("four")
                    .tabItem {
                        Image(systemName: "folder.fill")
                        Text("four")
                    }.tag(4)
                Text("Five")
                    .tabItem {
                        Image(systemName: "internaldrive.fill")
                        Text("five")
                    }.tag(5)
                Text("six")
                    .tabItem {
                        Image(systemName: "cloud.drizzle.fill")
                        Text("six")
                    }.tag(6)
            }
            .tint(.red)
            .tabViewStyle(.page) //Scroll
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always)) //Scroll UI
        }
        
    }
}




#Preview {
    ContentView()
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
