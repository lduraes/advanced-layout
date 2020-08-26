//
//  Modifiers.swift
//  DesignCodev2
//
//  Created by Luiz Durães on 29/04/2020.
//  Copyright © 2020 Luiz Durães. All rights reserved.
//

import SwiftUI

struct ShadowModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)).opacity(0.1), radius: 10, x: 0, y: 12)
            .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)).opacity(0.1), radius: 1, x: 0, y: 1)
    }
}

struct FontModifier: ViewModifier {
    var style: Font.TextStyle = .body
    
    func body(content: Content) -> some View {
        content
            .font(.system(style, design: .default))
    }
}

struct CustomFontModifier: ViewModifier {
    var size: CGFloat = 28
    
    func body(content: Content) -> some View {
        content
            .font(.custom("WorkSans-Bold", size: size))
    }
}
