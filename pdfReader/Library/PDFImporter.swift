import PDFKit
import SwiftUI

struct PDFImporter : UIViewRepresentable {
  typealias UIViewType = PDFView
  
  @Binding var link: String
  
  
  func makeUIView(context: Self.Context) -> UIViewType {
    // Create a `PDFView` and set its `PDFDocument`.
    let pdfView = PDFView()
    pdfView.document = PDFDocument(url: URL(string: link)!)
    pdfView.displayMode = .singlePageContinuous
    pdfView.autoScales = true
    return pdfView
  }
  
  func updateUIView(_ pdfView: UIViewType, context _: Self.Context) {
    pdfView.document = PDFDocument(url: URL(string: link)!)
  }
}
