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
            Label("Text",
                  systemImage: "clock.circle").font(.title)
            Label{
                Text("No modifiers")
            } icon: {
                //Assets 이미지 파일 업로드
                Image("clock-solid")
                    .resizable()
                    .frame(width: 20, height: 20)
            }
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

