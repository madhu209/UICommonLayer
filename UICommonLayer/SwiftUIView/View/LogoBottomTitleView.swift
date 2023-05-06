//
//  LogoBottomTitleView.swift
//  UmaCooks
//
//  Created by Madhusudhan.Putta on 26/04/23.
//

import SwiftUI

public struct LogoBottomTitleView: View {
    private var bottomTitle: String = "View Title"

    public init(bottomTitle: String) {
        self.bottomTitle = bottomTitle
    }
    
    public var body: some View {
        VStack(spacing: 10) {
            Image("app_icon_120")
            Text(bottomTitle)
                .multilineTextAlignment(.center)
        }
    }
}

struct LogoBottomTitleView_Previews: PreviewProvider {
    static var previews: some View {
        LogoBottomTitleView(bottomTitle: "View Title")
    }
}
