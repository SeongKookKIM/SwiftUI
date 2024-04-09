//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by SeongKook on 2024/04/08.
//

import SwiftUI

struct ContentView: View {
    @State private var temValue: CGFloat = 0
    @State private var finalValue: CGFloat = 1

    var body: some View {
        VStack {
            Image(systemName: "star.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .scaleEffect(finalValue + temValue)
                .gesture(MagnificationGesture().onChanged { amount in
                    temValue = amount - 1
                }.onEnded { amount in
                    finalValue += temValue
                    temValue = 0
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

