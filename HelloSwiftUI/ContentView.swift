//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by SeongKook on 2024/04/08.
//

import SwiftUI

struct ContentView: View {
    @State private var showAlet = false
    var body: some View {
        VStack {
            Button("Show Alert") {
                showAlet.toggle()
            }
            .alert(isPresented: $showAlet, content: {
                Alert(title: Text("Warning!"), message: Text("Zombies on the loose"), dismissButton: .default(Text("OK")))
            })
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

