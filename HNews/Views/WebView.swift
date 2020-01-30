//
//  WebView.swift
//  HNews
//
//  Created by Gabriel Meira on 30.01.20.
//  Copyright © 2020 Gabriel Meira. All rights reserved.
//

import SwiftUI
import Foundation
import WebKit

struct WebView: UIViewRepresentable {
    let urlString: String?

    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {

        guard let safeString = urlString, let url = URL(string: safeString) else {
            return
        }

        let request = URLRequest(url: url)
        uiView.load(request)
    }
}
