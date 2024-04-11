//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by SeongKook on 2024/04/08.
//

import SwiftUI



struct ContentView: View {
    @State var flag = true
    @State var message = ""
    var body: some View {
        NavigationStack {
            Text(message)
            
            Toggle(isOn: $flag, label: {
                Text("Toggle displayMode")
            })
            .navigationTitle("Navigation Title")
            .navigationBarHidden(!flag)
            .navigationBarTitleDisplayMode(flag ? .large : .inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        message = "iCloud 아이콘 탭됨"
                    } label: {
                        Image(systemName: "icloud")
                    }
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        message = "완료 버튼 탭됨"
                    } label: {
                        Text("완료")
                    }
                }
            }
        }
        .accentColor(.purple)
    }
}




#Preview {
    ContentView()
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
