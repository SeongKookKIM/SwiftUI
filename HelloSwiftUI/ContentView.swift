//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by SeongKook on 2024/04/08.
//

import SwiftUI

class ShareString: ObservableObject {
    @Published var message = ""
}



struct ContentView: View {
    @StateObject var showMe = ShareString()
    
    var body: some View {
        NavigationStack {
            TextField("Type here", text: $showMe.message)
            NavigationLink(destination: FileView()) {
                Text("Send Message")
            }
            NavigationLink(destination: SeparateFile()) {
                Text("Tails")
            }.navigationTitle("Flip a Coin")
            
        }
        .environmentObject(showMe)
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
