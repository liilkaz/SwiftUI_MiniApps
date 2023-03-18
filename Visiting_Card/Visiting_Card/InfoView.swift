//
//  InfoView.swift
//  Visiting_Card
//
//  Created by Лилия Феодотова on 19.03.2023.
//

import SwiftUI

struct InfoView: View {
    let image: String
    let text: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 70)
            .fill(Color(.white))
            .frame(height: 50)
            .padding([.horizontal])
            .padding([.vertical], 5)
            .overlay(HStack {
                Image(systemName: image)
                    .foregroundColor(.green)
                Text(text)
            })
            .shadow(radius: 10)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(image: "pencil.circle.fill", text: "Test")
    }
}
