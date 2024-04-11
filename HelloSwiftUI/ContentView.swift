//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by SeongKook on 2024/04/08.
//

import SwiftUI





struct ContentView: View {
    
    var body: some View {
        NavigationStack {
            Text("Choose Heads or Tails")
            NavigationLink(destination: FileView(choice: "Head")) {
                Text("Send Message")
            }
            NavigationLink(destination: SeparateFile(passedData: "Tail")) {
                Text("Tails")
            }.navigationTitle("Flip a Coin")
            
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
