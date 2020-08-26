//
//  TabBar.swift
//  DesignCodev2
//
//  Created by Luiz Durães on 28/04/2020.
//  Copyright © 2020 Luiz Durães. All rights reserved.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            Home().tabItem {
                Image(systemName: "play.circle.fill")
                Text("Home")
            }
            
            CourseList().tabItem {
                Image(systemName: "rectangle.stack.fill")
                Text("Courses")
            }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TabBar().previewDevice("iPhone SE")
            TabBar().previewDevice("iPhone 11 Pro Max")
        }
    }
}
