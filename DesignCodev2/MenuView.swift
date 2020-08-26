//
//  MenuView.swift
//  DesignCodev2
//
//  Created by Luiz Durães on 27/04/2020.
//  Copyright © 2020 Luiz Durães. All rights reserved.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        VStack {
            Spacer()
            
            VStack(spacing: 16) {
                Text("Luiz Durães - 28% complete")
                    .font(.caption)
                
                Color.white
                    .frame(width: 38, height: 6)
                    .cornerRadius(3)
                    .frame(width: 130, height: 6, alignment: .leading)
                    .background(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)).opacity(0.08))
                    .cornerRadius(3)
                    .padding()
                    .frame(width: 150, height: 24)
                    .background(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)).opacity(0.1))
                    .cornerRadius(12)
                
                MenuRowView(iconName: "gear", title: "Account")
                MenuRowView(iconName: "creditcard", title: "Billing")
                MenuRowView(iconName: "person.crop.circle", title: "Sign out")
            }
            .frame(maxWidth: .infinity)
            .frame(height: 300)
            .background(BlurView(style: .systemMaterial))
//            .background(LinearGradient(gradient:
//                Gradient(colors: [Color("background3"), Color("background3").opacity(0.6)]), startPoint: .top, endPoint: .bottom)
//            )
            .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
            .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)).opacity(0.2), radius: 20, x: 0, y: 20)
            .padding(.horizontal, 30)
            .overlay(
                Image("Avatar")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
                    .offset(y: -150)
            )
        }
        .padding(.bottom, 30)
    }
}

struct MneuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}

struct MenuRowView: View {
    var iconName: String
    var title: String
    
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: iconName)
                .font(.system(size: 20, weight: .light))
                .imageScale(.large)
                .frame(width: 32, height: 32)
                .foregroundColor(Color(#colorLiteral(red: 0.662745098, green: 0.7333333333, blue: 0.831372549, alpha: 1)))
            Text(title)
                .font(.system(size: 20, weight: .bold, design: .rounded))
                .frame(width: 120, alignment: .leading)
        }
    }
}
