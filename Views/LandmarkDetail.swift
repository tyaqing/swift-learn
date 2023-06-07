//
//  LandmarkDetail.swift
//  learn
//
//  Created by yakir on 2023/6/7.
//

import SwiftUI

struct LandmarkDetail: View {
	var landmark: Landmark
	var body: some View {
		ScrollView {
			MapView(coordinate: landmark.locationCoordinate)
				.frame(height: 300)
			CircleImage(image: landmark.image)
				.offset(y: -130)
				.padding(.bottom, -130)
			VStack(alignment: .leading) {
				Image(systemName: "globe")
					.imageScale(.large)
					.font(.title)
					.foregroundColor(.accentColor)
				HStack {
					Text(landmark.name)
					Spacer()
					Text(landmark.state)
				}
				.font(.title)
				.foregroundColor(.green)
				Divider()
				Text("About \(landmark.name)")
					.font(.title)
				Text(landmark.description)
			}.padding()
		}
		.navigationTitle(landmark.name)
		.navigationBarTitleDisplayMode(.inline)
	}
}

struct LandmarkDetail_Previews: PreviewProvider {
	static var previews: some View {
		LandmarkDetail(landmark: ModelData().landmarks[2])
	}
}
