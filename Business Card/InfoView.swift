//
//  InfoView.swift
//  Business Card
//
//  Created by Harrison Gittos on 18/08/2020.
//  Copyright © 2020 Harrison Gittos. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 40)
            .foregroundColor(.white)
            .frame(height: 40)
            .overlay(HStack {
                Image(systemName: imageName).foregroundColor(Color(red: 0.00, green: 0.81, blue: 0.79))
                Text(text)
                    .font(Font.custom("SuisseIntlMono-Regular", size: 15))
                    .foregroundColor(.black)
            })
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "test", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
