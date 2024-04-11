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
            NavigationLink(destination:FileView(choice: "헤드") ) {
                Text("헤드 선택")
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
