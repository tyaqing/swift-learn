//
//  learnApp.swift
//  learn
//
//  Created by yakir on 2023/6/6.
//

import SwiftUI

@main
struct learnApp: App {
	@StateObject private var modelData = ModelData()

	var body: some Scene {
		WindowGroup {
			ContentView()
				.environmentObject(modelData)
		}
	}
}
