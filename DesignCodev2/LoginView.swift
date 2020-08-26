//
//  LoginView.swift
//  DesignCodev2
//
//  Created by Luiz Durães on 06/05/2020.
//  Copyright © 2020 Luiz Durães. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        GeometryReader { geometry in
            Text("Learn, design & code.\nFrom scratch.")
                .font(.system(size: (geometry.size.width / 10), weight: .bold))
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal, 16)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
