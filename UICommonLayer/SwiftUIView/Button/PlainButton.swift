//
//  PlainButton.swift
//  UmaCooks
//
//  Created by Madhusudhan.Putta on 26/04/23.
//

import SwiftUI

struct PlainButton: View {
    var btnTitle: String!
    let action: () -> Void
    var body: some View {
        Button(action: action) {
            Text(btnTitle)
                .foregroundColor(Color.yellow)
                .background(Color.clear)
                .frame(maxWidth: .infinity)
                .frame(maxHeight: .infinity)
        }.background(Color.clear)
    }
}

struct PlainButton_Previews: PreviewProvider {
    static var previews: some View {
        PlainButton(btnTitle: "Plain Button") {

        }
    }
}
