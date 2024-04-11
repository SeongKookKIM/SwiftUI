//
//  FileView.swift
//  HelloSwiftUI
//
//  Created by SeongKook on 4/11/24.
//

import SwiftUI


struct FileView: View {
    @EnvironmentObject var choice: ShareString
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                TextField("Type here", text: $choice.message)
                Text("you choose = \(choice.message)")
                Spacer()
            }
            Spacer()
        }.background(Color.yellow)
    }
}
