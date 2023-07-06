import RealityKit
import RealityKitContent
import SwiftUI

struct LibraryView: View {
  @State var link: String
  
  init(link: String) {
    self._link = State(initialValue: link)
  }
  
  var body: some View {
    VStack {
      Text("Library View")
        .padding()
      PDFImporter(link: self.$link)
    }
  }
}

#Preview {
  LibraryView(link: "https://dagrs.berkeley.edu/sites/default/files/2020-01/sample.pdf")
}

