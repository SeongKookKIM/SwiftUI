//
//  FileView.swift
//  HelloSwiftUI
//
//  Created by SeongKook on 4/11/24.
//

import SwiftUI


struct FileView: View {
    var choice: String
    
    var body: some View {
        VStack {
            Text("선택 = \(choice)")
        }
    }
}
