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
           Text("Turtle Rock")
                .padding()
                .contextMenu {
                    Button{
                        
                    } label: {
                        Label("Add to Favoriate", systemImage: "heart")
                    }
                    Button{
                        
                    } label: {
                        Label("Show in Maps", systemImage: "mappin")
                    }
                }
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

