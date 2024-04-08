//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by SeongKook on 2024/04/08.
//

import SwiftUI



struct ContentView: View {
    
    @State private var message = ""
    
    var body: some View {
        
        VStack (spacing: 28) {
            Text(message)
            
            Picker("Favorite Color", selection: $message, content: {
                Text("Happy").tag("happy")
                Text("Sad").tag("sad")
                Text("Bored").tag("bored")
            })
            .pickerStyle(SegmentedPickerStyle())
            .onChange(of: message) { newValue in
                switch newValue {
                case "happy":
                    message = "Be happy and joyus"
                case "sad":
                    message = "Lige can be a struggle at times"
                case "bored":
                    message = "Look for your purpose"
                default:
                    break
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

