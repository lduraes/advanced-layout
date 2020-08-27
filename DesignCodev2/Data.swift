//
//  Data.swift
//  DesignCodev2
//
//  Created by Luiz Durães on 04/05/2020.
//  Copyright © 2020 Luiz Durães. All rights reserved.
//

import SwiftUI

struct Post: Codable, Identifiable {
    let id = UUID()
    var title: String
    var body: String
}

class Api {
    func getPosts(completionHandler: @escaping([Post]) -> Void) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else { return }
        
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            guard let data = data else { return }
            
            let posts = try! JSONDecoder().decode([Post].self, from: data)
            
            DispatchQueue.main.async {
                completionHandler(posts)
            }
        }.resume()
    }
}
