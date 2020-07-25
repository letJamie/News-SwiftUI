//
//  ContentView.swift
//  News SwiftUI
//
//  Created by Jamie on 2020/07/25.
//  Copyright © 2020 Jamie. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        
        NavigationView {
            
            List(networkManager.post) { post in
                Text(post.title)
                
            }
                
                
            .navigationBarTitle("NEWS")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//let posts = [
//    Post(id: "1", title: "hi"),
//    Post(id: "2", title: "let"),
//    Post(id: "3", title: "gaga")
//]
