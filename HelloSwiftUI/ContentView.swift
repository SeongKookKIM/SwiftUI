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
            Button("여기를 클릭하세여!") {
                print("클릭시 실행코드1")
            }
            
            Button {
                print("클릭시 실행코드2")
            } label: {
                Text("Click Here")
                    .font(.largeTitle)
                    .foregroundColor(.green)
                    .padding()
                    .border(Color.red, width: 6)
            }
            
            Button {
                print("클릭시 실행코드3")
            } label: {
                Image("sample_dog_square")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.yellow, lineWidth: 4))
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

