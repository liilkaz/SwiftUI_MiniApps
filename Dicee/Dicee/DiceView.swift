//
//  DiceView.swift
//  Dicee
//
//  Created by Лилия Феодотова on 18.03.2023.
//

import SwiftUI

struct DiceView: View {
    let number: Int
    var body: some View {
        Image("dice\(number)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding(.all)
    }
}

struct DiceView_Previews: PreviewProvider {
    static var previews: some View {
        DiceView(number: 1).previewLayout(.sizeThatFits)
    }
}
