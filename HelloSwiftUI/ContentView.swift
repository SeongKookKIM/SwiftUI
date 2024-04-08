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
            /* 도형
             Capsule().fill(Color.yellow)
             Circle().fill(Color.blue)
             Ellipse().fill(Color.brown)
             Rectangle().fill(Color.red)
             RoundedRectangle(cornerRadius: 30).fill(Color.green)
             
             그라디언트
             Spacer()
             Ellipse().fill(RadialGradient(
             gradient: Gradient(colors: [.blue,.yellow]),
             center: .top,
             startRadius: 10,
             endRadius: 65
             ))
             */
            
            /* 글디언트
             Spacer()
             Ellipse().fill(RadialGradient(
             gradient: Gradient(colors: [.blue,.yellow]),
             center: .center,
             startRadius: 10,
             endRadius: 65
             ))
             Spacer()
             Ellipse().fill(AngularGradient(
             gradient: Gradient(colors: [.blue,.yellow]),
             center: .center
             ))
             Spacer()
             */
            
            // 이미지 커스텀 모드
            Image(systemName: "tortoise.fill")
            Image(systemName: "tortoise.fill").font(.title)
            Image(systemName: "tortoise.fill").font(.custom("", size: 50))
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

