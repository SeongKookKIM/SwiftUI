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
        VStack {
            let myString = "Displays a string variable"
            Text("Hello World, \(myString)")
            Text("This is my age \(myString). Since I am retired This is my age \(myString). Since I am retired This is my age \(myString). Since I am retired")
                .multilineTextAlignment(.leading)
                .lineLimit(3)
                .truncationMode(.tail)
            
            Spacer(minLength: 10)
            
            Text("Bold Text")
                .font(.title)
                .bold()
            
            Text("italic")
                .font(.title2)
                .italic()
            Text("UnderLined")
                .font(.headline)
                .underline()
            Text("StrikeTrough")
                .font(.subheadline)
                .strikethrough()
            Text("Custom Font Text")
                .font(.custom("AmericanTypewriter" , size: 24))
            Text("Line Spacing\n Second")
                .font(.body)
                .lineSpacing(50)
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

