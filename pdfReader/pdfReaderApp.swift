//
//  pdfReaderApp.swift
//  pdfReader
//
//  Created by Hoa Pham on 7/4/23.
//

import SwiftUI

@main
struct pdfReaderApp: App {
    var body: some Scene {
        WindowGroup {
            LibraryView(link: "https://dagrs.berkeley.edu/sites/default/files/2020-01/sample.pdf")
        }
    }
}
