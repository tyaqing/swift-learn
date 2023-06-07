//
//  MapView.swift
//  learn
//
//  Created by yakir on 2023/6/7.
//

import MapKit
import SwiftUI

struct MapView: View {
	var coordinate: CLLocationCoordinate2D
	@State private var region = MKCoordinateRegion()

	var body: some View {
		Map(coordinateRegion: $region)
			.onAppear {
				setRegion(coordinate)
			}
	}

	private func setRegion(_ coordinate: CLLocationCoordinate2D) {
		region = MKCoordinateRegion(
			center: coordinate,
			span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
		)
	}
}

struct MapView_Previews: PreviewProvider {
	static var previews: some View {
		MapView(coordinate: CLLocationCoordinate2D(latitude: 22.541286, longitude: 114.056868))
	}
}
