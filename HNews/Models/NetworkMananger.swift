//
//  NetworkMananger.swift
//  HNews
//
//  Created by Gabriel Meira on 30.01.20.
//  Copyright © 2020 Gabriel Meira. All rights reserved.
//

import Foundation

class NetworkManager: ObservableObject{

    @Published var post = [Post]()

    func fetchData() {
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                guard let data = data, error == nil else {
                    return
                }
                let decoder = JSONDecoder()
                do {
                    let results = try decoder.decode(Results.self, from: data)
                    DispatchQueue.main.async {
                        self.post = results.hits
                    }
                } catch {
                    debugPrint(error)
                }
            }
            task.resume()
        }
    }
}
