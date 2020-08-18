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
            Text("AechGG")
                .font(Font.custom("SuisseIntlMono-Regular", size: 40))
                .foregroundColor(.white)
                .bold()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
