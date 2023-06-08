import SwiftUI

struct LandmarkDetail: View {
	@EnvironmentObject var modelData: ModelData
	var landmarkIndex: Int {
		modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
	}

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
					FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
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
	static let modelData = ModelData()

	static var previews: some View {
		LandmarkDetail(landmark: ModelData().landmarks[2])
			.environmentObject(modelData)
	}
}
