//
//  CategoryRow.swift
//  learn
//
//  Created by yakir on 2023/6/7.
//

import SwiftUI

struct CategoryRow: View {
	var categoryName: String
	var items: [Landmark]
	var body: some View {
		VStack(alignment: .leading) {
			Text(categoryName)
				.font(.headline)
				.padding(.leading, 15)
				.padding(.top, 5)
			ScrollView(.horizontal, showsIndicators: false) {
				HStack(spacing: 0) {
					ForEach(items) { item in
						NavigationLink {
							LandmarkDetail(landmark: item)
						} label: {
							CategoryItem(landmark: item)
						}
					}
				}
			}
			.frame(height: 185)
		}
	}
}

struct CategoryRow_Previews: PreviewProvider {
	static var landmarks: [Landmark] = ModelData().landmarks
	static var previews: some View {
		CategoryRow(categoryName: landmarks[0].category.rawValue, items: Array(landmarks.prefix(4)))
	}
}
