//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by SeongKook on 2024/04/08.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedColor = Color.gray
    var body: some View {
        VStack {
           Rectangle()
                .foregroundStyle(selectedColor)
                .frame(width: 200)
                .contextMenu {
                    Button("빨강", action: {
                        changeColor(color: .red)
                    })
                    Button("보라", action: {
                        changeColor(color: .purple)
                    })
                }
            Text("색상 선택")
                .padding()
        }
    }
    func changeColor(color: Color) {
        selectedColor = color
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

