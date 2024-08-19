//
//  SNAP - https://github.com/simonnickel/snap
//  Created by Simon Nickel
//

import SwiftUI

public struct MNavTabScene: View {
	
	private let tabs: [any MNavItem]
	private var selectedTabID: Binding<MNavItem.ID>
	
	public typealias TabScreenBuilder = (MNavItem) -> any View
	@ViewBuilder private let tabScreen: TabScreenBuilder
	
	public init(tabs: [any MNavItem], selected: Binding<MNavItem.ID>, @ViewBuilder tabScreen: @escaping TabScreenBuilder) {
		self.tabs = tabs
		self.selectedTabID = selected
		self.tabScreen = tabScreen
	}
	
	public var body: some View {
		
		TabView(selection: selectedTabID) {
			ForEach(tabs, id: \.id) { tab in
				Group {
					AnyView(tabScreen(tab))
				}
				.tabItem {
					AnyView(tab.tabItem)
				}
				.tag(tab.id)
			}
		}
		
	}
}
