//
//  Mode+Environment.swift
//	SnapMatchingNavigation
//
//  Created by Simon Nickel on 10.01.24.
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
