//
//  ContentView.swift
//  Visiting_Card
//
//  Created by Лилия Феодотова on 19.03.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red: 0.10, green: 0.74, blue: 0.61)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image(Info.yourPhoto)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text(Info.yourName)
                    .font(Font.custom(Info.font, size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text(Info.yourProfession)
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                Divider()
                InfoView(image: Info.Icons.phoneNumber, text: Info.yourTelephoneNumber)
                InfoView(image: Info.Icons.mail, text: Info.yourEmail)
                InfoView(image: Info.Icons.telegramm, text: Info.yourTelegram)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
