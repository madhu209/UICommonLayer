//
//  TextFieldTopTitle.swift
//  UmaCooks
//
//  Created by Madhusudhan.Putta on 26/04/23.
//

import SwiftUI

struct TextFieldTopTitle: View {
    var headerTitle: String!
    var placeHolder: String!
    @State var textEditValue: String = ""
//    var proxy: GeometryProxy
    var body: some View {
        VStack {
            Text(headerTitle)
                .frame(maxWidth: .infinity, alignment: .leading)
//            TextField("asdasd", text: $textEditValue, prompt: Text(placeHolder))
//                .padding(EdgeInsets(top: 7, leading: 10, bottom: 7, trailing: 10))
//                .background(Color.white)
//                .cornerRadius(5)
//                .overlay(
//                                    RoundedRectangle(cornerRadius: 5)
//                                        .stroke(lineWidth: 1.0)
//                                )

            TextField(placeHolder, text: $textEditValue).padding(EdgeInsets(top: 7, leading: 10, bottom: 7, trailing: 10))
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
        TextFieldTopTitle(headerTitle: "Text Field Header", placeHolder: "Field Placeholder", textEditValue: "")
                .background(Color.blue)
    }
}
