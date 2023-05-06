//
//  BordorButton.swift
//  UmaCooks
//
//  Created by Madhusudhan.Putta on 26/04/23.
//

import SwiftUI

public struct BordorFillButton: View {
    private var btnTitle: String!
    private var cornerRadius: CGFloat = 0
    private let action: () -> Void

    public init(btnTitle: String!, cornerRadius: CGFloat, action: @escaping () -> Void) {
        self.btnTitle = btnTitle
        self.cornerRadius = cornerRadius
        self.action = action
    }

    public var body: some View {
        Button(action: action) {
            Text(btnTitle)
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
        BordorFillButton(btnTitle: "Bordor Color", cornerRadius: 5) {
            
        }
    }
}
