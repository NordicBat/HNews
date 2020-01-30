//
//  ContentView.swift
//  HNews
//
//  Created by Gabriel Meira on 30.01.20.
//  Copyright © 2020 Gabriel Meira. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @ObservedObject var networkManager = NetworkManager()

    var body: some View {
        NavigationView {
            List(networkManager.post) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
        .navigationBarTitle("H News")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
