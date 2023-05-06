//
//  BackgroundFillButton.swift
//  UmaCooks
//
//  Created by Madhusudhan.Putta on 26/04/23.
//

import SwiftUI

public struct BackgroundFillButton: View {
    private var btnTitle: String!
    private var cornerRadius: CGFloat = 5
    private let action: () -> Void

    public init(btnTitle: String!, cornerRadius: CGFloat, action: @escaping () -> Void) {
        self.btnTitle = btnTitle
        self.cornerRadius = cornerRadius
        self.action = action
    }

    public var body: some View {

        Button(action: action) {
            Text(btnTitle)
                .foregroundColor(Color.white)
                .frame(maxWidth: .infinity)
                .frame(maxHeight: .infinity)

        }.background(Color.yellow)
            .cornerRadius(cornerRadius)
            .overlay(
                RoundedRectangle(cornerRadius: cornerRadius)
                            .stroke(Color.yellow, lineWidth: 1.5)
            )

//        Button {
//
//        } label: {
//            Text(btnTitle)
//                .foregroundColor(Color.white)
//                .frame(maxWidth: .infinity)
//                .frame(maxHeight: .infinity)
//        }.background(Color.yellow)
//            .overlay(
//                RoundedRectangle(cornerRadius: cornerRadius)
//                            .stroke(Color.yellow, lineWidth: 1.5)
//            )

        
    }
}

struct YellowButton_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundFillButton(btnTitle: "BUTTON", cornerRadius: 5) {
            
        }
    }
}
