//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by SeongKook on 2024/04/08.
//

import SwiftUI

struct ContentView: View {
    @State private var isOn = true
    @State private var value = 0
    @State private var sliderValue = 0.5
    
    var body: some View {
        VStack {
            ZStack {
                Text("Top")
                    .font(.system(size:40))
                    .background(Color.yellow)
                Text("Top")
                    .font(.system(size:40))
                    .background(Color.yellow)
                    .offset(x: 74, y: 125)
                Text("Top")
                    .font(.system(size:40))
                    .background(Color.yellow)
                    .position(x:255, y:127)
            }
            VStack {
                Text("First")
                    .font(.system(size:40))
                    .background(Color.yellow)
                Text("second View")
                    .font(.system(size:40))
                    .background(Color.yellow)
            }
            .offset(x:-25, y:-125)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
/** IOS 17  부터 이 문법으로 바뀜...
 #Preview {
 ContentView()
 }
 **/

