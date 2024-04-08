//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by SeongKook on 2024/04/08.
//

import SwiftUI

struct ContentView: View {
    @State private var isOn = true
    @State private var value = 0
    @State private var sliderValue = 0.5
    
    var body: some View {
        VStack(alignment: .trailing, spacing: 24) {
            Text("Default padding of 16 ponint")
                .padding(16)
                .background(Color.yellow)
            Text("Default padding of 45 ponint")
                .padding(45)
                .background(Color.yellow)
            Text("Default padding of 3 ponint")
                .padding(3)
                .background(Color.yellow)
            Text("Top padding Only")
                .padding(.top)
                .background(Color.yellow)
            Text("Trail padding Only")
                .padding(.trailing)
                .background(Color.yellow)
            Text("bottom padding Only")
                .padding(.bottom)
                .background(Color.yellow)
            Text("leading padding Only")
                .padding(.leading, 45)
                .background(Color.yellow)
            Text("Top, Leading padding")
                .padding([.top,.leading], 45)
                .background(Color.yellow)
            Text("Top, Leading,bottom padding")
                .padding([.top,.leading, .bottom], 45)
                .background(Color.yellow)
            Text("Top, Leading, bottom, Trail padding")
                .padding(EdgeInsets(top: 20, leading: 30, bottom: 10, trailing: 60))
                .background(Color.yellow)
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

