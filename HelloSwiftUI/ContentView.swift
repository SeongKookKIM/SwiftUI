//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by SeongKook on 2024/04/08.
//

import SwiftUI




struct ContentView: View {
    @State var myDate = Date.now
    let dateRange: ClosedRange<Date> = {
        let calendar = Calendar.current
        let startComponents = DateComponents(year: 2024, month: 3, day: 25)
        let endComponents = DateComponents(year: 2024, month: 9, day: 13)
        return calendar.date(from: startComponents)!
        ...
        calendar.date(from:endComponents)!
    }()
    
    var body: some View {
        VStack {
          Text("Chosen date = \(myDate)")
                .padding()
            
            DatePicker(selection: $myDate, in: dateRange, displayedComponents: [.date], label: {Text("date")})
                .datePickerStyle(.graphical)
                .padding()
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

