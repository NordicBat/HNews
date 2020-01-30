//
//  DetailView.swift
//  HNews
//
//  Created by Gabriel Meira on 30.01.20.
//  Copyright © 2020 Gabriel Meira. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    var url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "")
    }
}
