//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by SeongKook on 2024/04/08.
//

import SwiftUI

struct ContentView: View {
        @State var text = "길게 눌러 확인"
    var body: some View {
        VStack {
           Text("Turtle Rock")
                .padding()
                .contextMenu {
                    Button{
                        text = "Favorite"
                    } label: {
                        Label("Add to Favoriate", systemImage: "heart")
                    }
                    Button{
                        text = "Maps"
                    } label: {
                        Label("Show in Maps", systemImage: "mappin")
                    }
                }
            
            Text("\(text)")
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

