//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by SeongKook on 2024/04/08.
//

import SwiftUI


@available(iOS 15.0, *)

struct ContentView: View {
    @State private var message = ""
    @FocusState var dismissKeyboard: Bool
    var body: some View {
        VStack {
            TextField("Place Holder", text: $message)
                .textFieldStyle(.roundedBorder)
                //자동 완성 끔->true
                .autocorrectionDisabled(true)
                //키보드 모양
                .textContentType(.emailAddress)
                // 자판기 완료 버튼부분 커스텀
                .submitLabel(.done)
                .padding()
                // 실행종료시 포커스 날리기
                .focused($dismissKeyboard)
            
            
            SecureField("Password", text: $message)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            TextEditor(text: $message)
                
            
            Button("Hide keyboard") {
                dismissKeyboard = false
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

