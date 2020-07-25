//
//  NetworkManager.swift
//  News SwiftUI
//
//  Created by Jamie on 2020/07/25.
//  Copyright © 2020 Jamie. All rights reserved.
//

import Foundation

class NetworkManager: ObservableObject {
    
    @Published var post = [Post]()
    
    func fetchData() {
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    let decorder = JSONDecoder()
                    if let safeData = data {
                        do {
                           let results = try decorder.decode(Results.self, from: safeData)
                            self.post = results.hits
                        } catch {
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
}
