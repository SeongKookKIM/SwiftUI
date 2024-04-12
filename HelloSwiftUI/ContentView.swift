//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by SeongKook on 2024/04/08.
//

import SwiftUI


struct ContentView: View {
   
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Text("Width = \(geometry.size.width)")
                Text("height = \(geometry.size.height)")
            }
        }
        .background(Color.yellow)
//        .ignoresSafeArea() // 상단 다이나믹이일랜드
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
