//
//  BackgroundImageView.swift
//  UmaCooks
//
//  Created by Madhusudhan.Putta on 26/04/23.
//

import SwiftUI

struct BackgroundImageView: View {
    var body: some View {
        Image("bg")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .ignoresSafeArea()
    }
}

struct BackgroundImageView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundImageView()
    }
}
