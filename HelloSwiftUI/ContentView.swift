//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by SeongKook on 2024/04/08.
//

import SwiftUI

struct Movie: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let description: String
}

// ObservableObject -> ObservableObject에 연결된 데이터를 읽어오고 변경 사항을 자동으로 감지하여 자동으로 업데이트
// @Published -> 프로토콜을 준수하는 클래스 내에서 사용되며, 속성을 관찰하고 해당 속성의 변경을 구독하는 데 사용
class MovieListViewModel: ObservableObject {
    @Published var movies: [Movie] = [
        Movie(title: "영화1", description: "영화1 설명"),
        Movie(title: "영화2", description: "영화2 설명"),
        Movie(title: "영화3", description: "영화3 설명")
    ]
}

struct MovieDetailView: View {
    let movie: Movie
    var body: some View {
        VStack {
            Text(movie.title)
                .font(.title)
            Text(movie.description)
                .padding()
        }
    }
}

struct ContentView: View {
    // 화면 전환 시 View가 없어지지만 @StateObject를 사용함으로써 계속 사용할 수 있게함
    @StateObject private var viewModel = MovieListViewModel()
    
    var body: some View {
        NavigationStack {
            List(viewModel.movies) { movie in
                NavigationLink(movie.title , value: movie)
            }
            .navigationTitle("영화목록")
            .navigationDestination(for: Movie.self) {movie in
                MovieDetailView(movie: movie)
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
