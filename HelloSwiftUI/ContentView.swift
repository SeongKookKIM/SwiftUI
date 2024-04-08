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
            /* 이미지 크기 조정
             Image("sample_dog_square")
             .resizable()
             .frame(width: 250, height: 250)
             .aspectRatio(contentMode: .fill)
             
             Image("sample_cat_square")
             .resizable()
             .frame(width: 250, height: 250)
             .aspectRatio(contentMode: .fill)
             .clipShape(Circle())
             */
            
            /* 이미지 그림자 효과
             Image("sample_dog_square")
             .resizable()
             .frame(width: 250, height: 250)
             .aspectRatio(contentMode: .fill)
             .shadow(color: .red, radius: 46, x:0, y:0)
             
             Image("sample_cat_square")
             .resizable()
             .frame(width: 250, height: 250)
             .aspectRatio(contentMode: .fill)
             .clipShape(Circle())
             .shadow(color: .green, radius: 46, x: 90, y: 50)
             */
            
            /* 이미지 테두리 효과
             Image("sample_dog_square")
             .resizable()
             .frame(width: 250, height: 250)
             .aspectRatio(contentMode: .fill)
             .shadow(color: .red, radius: 46, x:0, y:0)
             .overlay(Rectangle().stroke(Color.blue, lineWidth: 10))
             
             Image("sample_cat_square")
             .resizable()
             .frame(width: 250, height: 250)
             .aspectRatio(contentMode: .fill)
             .clipShape(Circle())
             .shadow(color: .green, radius: 46, x: 90, y: 50)
             .overlay(Circle().stroke(Color.purple, lineWidth: 20))
             */
            
            // 이미지 투명도
            Image("sample_dog_square")
                .resizable()
                .frame(width: 250, height: 250)
                .aspectRatio(contentMode: .fill)
                .shadow(color: Color(hue: 0.241, saturation: 0.389, brightness: 0.948), radius: 50, x: 0, y: 0)
                .opacity(0.75)
                
            
            Image("sample_cat_square")
                .resizable()
                .frame(width: 250, height: 250)
                .aspectRatio(contentMode: .fill)
                .clipShape(Circle())
                .opacity(0.25)
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

