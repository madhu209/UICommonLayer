//
//  BordorButton.swift
//  UmaCooks
//
//  Created by Madhusudhan.Putta on 26/04/23.
//

import SwiftUI

struct BordorFillButton: View {
    var btnTitle: String!
    var cornerRadius: CGFloat = 0
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(btnTitle)
//                .padding([.top, .bottom], 5)
//                .padding([.leading, .trailing], 15)
                .foregroundColor(Color.yellow)
                .frame(maxWidth: .infinity)
                .frame(maxHeight: .infinity)
        }.background(Color.white)
            .overlay(
                        RoundedRectangle(cornerRadius: cornerRadius)
                            .stroke(Color.yellow, lineWidth: 1.5)
                    )

    }
}

struct BordorButton_Previews: PreviewProvider {
    static var previews: some View {
        BordorFillButton(btnTitle: "Bordor Color") {
            
        }
    }
}
