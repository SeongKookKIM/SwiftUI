import SwiftUI

struct SeparateFile: View {
    @EnvironmentObject var passedData: ShareString
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                Text("You Choose = \(passedData.message)")
                Spacer()
            }
            Spacer()
        }
    }
}

#Preview {
    SeparateFile()
}
