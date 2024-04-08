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
            
            Slider(value: $sliderValue, in: 0...1)
                .tint(.red)
            
            
            Stepper("값 \(value)", value: $value, in: 0...10)
            
            Toggle("Toggle message on/off", isOn: $isOn).padding(20)
            
            Text("위")
                .background(Color.orange).padding(.vertical, 4.0)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            HStack {
                Text("왼쪽")
                Text("오른쪽")
            }
            ZStack {
                Text("배경")
                Text("전경")
            }
            Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                print("Button1 click!")
            }
            Button(action: {
                print("Button2 click!")
            }, label: {
                Text("button")
            })
        }
        .background(.brown)
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

