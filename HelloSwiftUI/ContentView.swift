//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by SeongKook on 2024/04/08.
//

import SwiftUI




struct ContentView: View {
    @State private var choice = 0.0
    @State private var myColor = Color.red
    @State var myDate = Date.now
    
    var body: some View {
        VStack {
            Picker(selection: $choice, label: Text("Picker")) {
                Text("Bird").tag(1.7)
                Text("Cat").tag(2.06)
                Text("Lizard").tag(3.41)
                Text("Dog").tag(4.13)
                Text("Hamster").tag(5.28)
            }.pickerStyle(SegmentedPickerStyle())
            Text("You choose \(choice)")
            
            ColorPicker("Pick a coor", selection: $myColor)
            Rectangle()
                .frame(width: 200, height: 150)
                .foregroundColor(myColor)
            
            DatePicker(selection: $myDate, label: { Text("Date")})
                .datePickerStyle(.graphical)
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

