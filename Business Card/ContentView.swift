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
                    .foregroundColor(Color("InfoColor"))
                    .bold()
                Text("Software Engineer").foregroundColor(.white).font(.system(size: 25))
                Divider()
                InfoView(text: "AechGG.github.io", imageName: "link")
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
