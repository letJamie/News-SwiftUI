//
//  PostData.swift
//  News SwiftUI
//
//  Created by Jamie on 2020/07/25.
//  Copyright © 2020 Jamie. All rights reserved.
//

import Foundation

struct Results: Codable {
    let hits: [Post]
}


struct Post: Codable, Identifiable {
    
    var id: String {
        return objectID
    }
    
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
