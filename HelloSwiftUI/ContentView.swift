//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by SeongKook on 2024/04/08.
//

import SwiftUI



struct ContentView: View {
    @State var colorMe = false
    
    var body: some View {
        VStack {
            Rectangle()
                .fill(colorMe ? Color.green : Color.gray)
                .frame(width: 250, height: 100)
            
            Button("여기를 클릭하세여!") {
                colorMe.toggle()
            }
            
            Button {
                colorMe.toggle()
            } label: {
                Text("Click Here")
                    .font(.largeTitle)
                    .foregroundColor(.green)
                    .padding()
                    .border(Color.red, width: 6)
            }
            
            Button {
                colorMe.toggle()
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

