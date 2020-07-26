//
//  DetailView.swift
//  News SwiftUI
//
//  Created by Jamie on 2020/07/26.
//  Copyright © 2020 Jamie. All rights reserved.
//

import SwiftUI
//import WebKit

struct DetailView: View {
    
    let url: String?
    
    var body: some View {

        WebView(urlString: url)
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}



