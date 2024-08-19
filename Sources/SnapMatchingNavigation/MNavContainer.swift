//
//  SNAP - https://github.com/simonnickel/snap
//  Created by Simon Nickel
//

import SwiftUI

public struct MNavContainer: View {
	
	public typealias SplitSceneBuilder = () -> any View
	@ViewBuilder let splitScene: SplitSceneBuilder
	
	public typealias TabSceneBuilder = () -> any View
	@ViewBuilder let tabScene: TabSceneBuilder
	
	public init(splitScene: @escaping SplitSceneBuilder, tabScene: @escaping TabSceneBuilder) {
		self.splitScene = splitScene
		self.tabScene = tabScene
	}
	
	public var body: some View {
		
#if canImport(UIKit)
		switch UIScreen.main.traitCollection.userInterfaceIdiom {
				
			case .phone: AnyView(tabScene())
				
			case .pad, .mac, .vision: AnyView(splitScene())
				
			case .unspecified, .tv, .carPlay: AnyView(tabScene())
			@unknown default: AnyView(tabScene())
		}
#else
		AnyView(splitScene())
#endif
		
	}
	
}


// MARK: - Mode

public extension MNavContainer {
	
	/// Not used inside of SnapMatchingNavigation, but is useful to have available on consuming projects.
	enum Mode: Sendable {
		case tab, split
	}
	
}
