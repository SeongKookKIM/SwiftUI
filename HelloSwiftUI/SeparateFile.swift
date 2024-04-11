import SwiftUI

struct SeparateFile: View {
    var passedData: String
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                Text("You Choose = \(passedData)")
                Spacer()
            }
            Spacer()
        }
    }
}

#Preview {
    SeparateFile(passedData: "")
}
