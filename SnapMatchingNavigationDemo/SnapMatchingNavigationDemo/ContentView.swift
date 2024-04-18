//
//  ContentView.swift
//  SnapMatchingNavigationDemo
//
//  Created by Simon Nickel on 18.04.24.
//

import SwiftUI
import SnapMatchingNavigation

struct ContentView: View {
	
	struct TabItem: MNavItem {
		let title: String?
		let systemImage: String?

		// MNavItem
		var id: String = UUID().uuidString
		
		var tabItem: any View {
			Group {
				if let title {
					Text(title)
				}
				if let systemImage {
					Image(systemName: systemImage)
				}
			}
		}
	}
	
	private let tabs: [TabItem] = [
		.init(title: "Rectangle", systemImage: "rectangle"),
		.init(title: "Circle", systemImage: "circle"),
//		.init(title: nil, systemImage: "questionmark"),
//		.init(title: "nil", systemImage: nil),
//		.init(title: nil, systemImage: nil),
//		.init(title: "More", systemImage: "star"),
	]
	
	@State private var tabSelected: TabItem.ID = ""
	
    var body: some View {
		MNavContainer(splitScene: {
			NavigationSplitView {
				Text("Sidebar")
			} content: {
				Text("Content")
			} detail: {
				Text("Detail")
			}
		}, tabScene: {
			MNavTabScene(tabs: tabs, selected: $tabSelected, tabScreen: { tab in
				
				List(0..<14) { index in
					Text("Row \(index)")
				}
				
			})
		})
    }
}

#Preview {
    ContentView()
}
