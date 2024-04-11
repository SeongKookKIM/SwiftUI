//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by SeongKook on 2024/04/08.
//

import SwiftUI

struct ContentView: View {
    @State var sliderValue = 0.0
    @State var message = ""
    @State var flag = true
    
    var body: some View {
        VStack {
            DisclosureGroup("펼치기") {
                Text("입력한 내용 = \(message)")
                TextField("Type here", text: $message)
                Text(flag ? "Toggle = true" : "Toggle = false")
                Toggle(isOn: $flag) {
                    Text("Toggle")
                }
                Text("The slider value = \(sliderValue)")
                Slider(value: $sliderValue, in: 0...15)
                    .padding()
            }
            .padding()
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
