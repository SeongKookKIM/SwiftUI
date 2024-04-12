//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by SeongKook on 2024/04/08.
//

import SwiftUI


struct ContentView: View {
   
    var body: some View {
        VStack {
            Text("This Text view pushes the GeometryReader down")
            HStack {
                Text("Pushes to the right")
                GeometryReader { geometry in
                    VStack {
                        Text("minX = \(geometry.frame(in: .local).minX)")
                        Text("midX = \(geometry.frame(in: .local).midX)")
                        Text("maxX = \(geometry.frame(in: .local).maxX)")
                        Divider()
                        Text("minY = \(geometry.frame(in: .local).minY)")
                        Text("midY = \(geometry.frame(in: .local).midY)")
                        Text("maxY = \(geometry.frame(in: .local).maxY)")
                    }
                }
                .background(Color.yellow)
                .ignoresSafeArea() // 상단 다이나믹이일랜드
            }
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
