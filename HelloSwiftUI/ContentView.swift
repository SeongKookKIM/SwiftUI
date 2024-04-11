//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by SeongKook on 2024/04/08.
//

import SwiftUI


struct ContentView: View {
    @State var myDegress: Double = 0.0
    @State var flag = false
    var body: some View {
        VStack {
            Text("Hello, World!")
                .padding()
                .rotationEffect(Angle(degrees: flag ? myDegress : 0))
//                .animation(.easeIn, value: flag)
            Text("Hello, World!")
                .padding()
                .rotationEffect(Angle(degrees: flag ? myDegress : 0))
//                .animation(.easeOut, value: flag)
            Text("Hello, World!")
                .padding()
                .rotationEffect(Angle(degrees: flag ? myDegress : 0))
//                .animation(.easeInOut, value: flag)

            Button("Amimate now") {
                // 전체 애니메이션 트리거
                withAnimation(.easeInOut(duration: 2.5)) {
                    flag.toggle()
                }
                
            }
            Slider(value: $myDegress, in: -180...180, step: 1)
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
