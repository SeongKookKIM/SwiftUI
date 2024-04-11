//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by SeongKook on 2024/04/08.
//

import SwiftUI


struct ContentView: View {
    @State var move = true
    var body: some View {
        VStack {
            Text("A Text View")
                .offset(x: move ? 100: 0, y: move ? 100 : 0)
                .animation(.bouncy, value: move)
            Toggle(isOn: $move, label: {
                Text("Toggle Me")
            })
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
