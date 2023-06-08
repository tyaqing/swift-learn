//
//  FavoriteButton.swift
//  learn
//
//  Created by yakir on 2023/6/7.
//

import SwiftUI

struct FavoriteButton: View {
	@Binding var isSet: Bool

	var body: some View {
		Button {
			isSet.toggle()
		} label: {
			Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
				.labelStyle(.iconOnly)
				.foregroundColor(isSet ? .yellow : .gray)
		}
	}
}

struct FavoriteButton_Previews: PreviewProvider {
	// 创建一个可变的Bool类型的绑定
	static var previews: some View {
		// 将绑定传递给FavoriteButton
		FavoriteButton(isSet: .constant(true))
	}
}
