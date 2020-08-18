//
//  ContentView.swift
//  Business Card
//
//  Created by Harrison Gittos on 18/08/2020.
//  Copyright © 2020 Harrison Gittos. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.00, green: 0.81, blue: 0.79)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("Logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150.0, height: 150.0)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.black, lineWidth: 5))
                Text("AechGG")
                    .font(Font.custom("SuisseIntlMono-Regular", size: 40))
                    .foregroundColor(.white)
                    .bold()
                Text("Software Engineer").foregroundColor(.white).font(.system(size: 25))
                Divider()
                InfoView(text: "AechGG.github.io", imageName: "phone.fill")
                InfoView(text: "+44 1234 567891", imageName: "phone.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct InfoView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 40)
            .foregroundColor(.white)
            .frame(height: 40)
            .overlay(HStack {
                Image(systemName: "phone.fill").foregroundColor(Color(red: 0.00, green: 0.81, blue: 0.79))
                Text("+44 1234 567891")
                    .font(Font.custom("SuisseIntlMono-Regular", size: 15))
                    .foregroundColor(.black)
            })
            .padding(.all)
    }
}
