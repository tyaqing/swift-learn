//
//  FavPreview.swift
//  learn
//
//  Created by yakir on 2023/6/7.
//

import SwiftUI

struct FavPreview: View {
	@State var isSet = false
    var body: some View {
        FavoriteButton(isSet: $isSet)
    }
}

struct FavPreview_Previews: PreviewProvider {
    static var previews: some View {
        FavPreview()
    }
}
