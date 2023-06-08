//
//  CategoryHome.swift
//  learn
//
//  Created by yakir on 2023/6/7.
//

import SwiftUI

struct CategoryHome: View {
	private var categories = ModelData().categories
	private var features = ModelData().features
	@State private var showingProfile = false

	var body: some View {
		NavigationView {
			List {
				features[0].image
					.resizable()
					.scaledToFill()
					.frame(height: 200)
					.clipped()
					.listRowInsets(EdgeInsets())

				ForEach(ModelData().categories.keys.sorted(), id: \.self) { key in
					CategoryRow(categoryName: key, items: categories[key]!)
				}
				.listRowInsets(EdgeInsets())
			}
			.navigationTitle("你好世界")
			.toolbar {
				Button {
					showingProfile.toggle()
				} label: {
					Label("User Profile", systemImage: "person.crop.circle")
				}
			}
			.sheet(isPresented: $showingProfile) {
				ProfileHost()
					.environmentObject(ModelData())
			}
			.listStyle(PlainListStyle())
		}
	}
}

struct CategoryHome_Previews: PreviewProvider {
	static var previews: some View {
		CategoryHome()
	}
}
