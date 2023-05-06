//
//  TextFieldTopTitle.swift
//  UmaCooks
//
//  Created by Madhusudhan.Putta on 26/04/23.
//

import SwiftUI

public struct TextFieldTopTitle: View {
    private var headerTitle: String!
    @Binding private var field: String
    public init(headerTitle: String!, field: Binding<String>) {
        self.headerTitle = headerTitle
        self._field = field
    }

    public var body: some View {
        VStack {
            Text(headerTitle)
                .frame(maxWidth: .infinity, alignment: .leading)
            TextField("Enter \(headerTitle)", text: $field).padding(EdgeInsets(top: 7, leading: 10, bottom: 7, trailing: 10))
                .background(Color.white)
                .cornerRadius(5)
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(lineWidth: 0)
                )
        }
    }
}

struct TextFieldTopTitle_Previews: PreviewProvider {

    static var previews: some View {
        TextFieldTopTitle(headerTitle: "Header", field: .constant(""))
                .background(Color.blue)
    }
}
