//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by SeongKook on 2024/04/08.
//

import SwiftUI

class Species: Identifiable {
    let id = UUID()
    var name: String
    var classfication: [Species]?
    
    init(name: String, classfication: [Species]? = nil) {
        self.name = name
        self.classfication = classfication
    }
}

struct ContentView: View {
    var Animals: [Species] = [
        Species(name: "포유류", classfication: [
            Species(name: "개", classfication: [
                Species(name:"Poodle"),
                Species(name:"Collie"),
                Species(name:"st. Bernard")
               ]),
            Species(name:"고양이"),
            Species(name:"코끼리"),
            Species(name:"고래"),
        ]),
        Species(name: "조류", classfication: [
            Species(name: "카나리아"),
            Species(name: "앵무새"),
            Species(name: "독수리")
        ])
    ]
    
    var body: some View {
        List {
            OutlineGroup(Animals, id: \.id, children: \.classfication) { creature in
                Text(creature.name)
                
            }
        }
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
