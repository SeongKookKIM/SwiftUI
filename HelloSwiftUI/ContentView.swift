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
        VStack {
            TextField("Place Holder", text: $message)
                .textFieldStyle(.roundedBorder)
                .disableAutocorrection(true) //자동 완성 끔->true
                .textContentType(.emailAddress) //키보드 모양
                .submitLabel(.done) // 자판기 완료 버튼부분 커스텀
                .padding()
                
            
            SecureField("Password", text: $message)
                .textFieldStyle(.roundedBorder)
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

