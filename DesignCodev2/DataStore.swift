//
//  DataStore.swift
//  DesignCodev2
//
//  Created by Luiz Durães on 04/05/2020.
//  Copyright © 2020 Luiz Durães. All rights reserved.
//

import SwiftUI
import Combine

class DataStore: ObservableObject {
    @Published var posts: [Post] = []
    
    init() {
        getPosts()
    }
    
    func getPosts() {
        Api().getPosts { (posts) in
            self.posts = posts
        }
    }
}
