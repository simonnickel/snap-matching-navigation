//
//  SNAP - https://github.com/simonnickel/snap
//  Created by Simon Nickel
//

import SwiftUI

private struct NavModeKey: EnvironmentKey {
	static let defaultValue: MNavContainer.Mode = .tab
}

public extension EnvironmentValues {
	
	var navigationMode: MNavContainer.Mode {
		get { self[NavModeKey.self] }
		set { self[NavModeKey.self] = newValue }
	}
	
}
