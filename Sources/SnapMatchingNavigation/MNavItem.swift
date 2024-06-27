//
//  MNavTabItem.swift
//  SnapMatchingNavigation
//
//  Created by Simon Nickel on 31.08.23.
//

import SwiftUI

public protocol MNavItem {

	typealias ID = String
	
	var id: MNavItem.ID { get }

	@MainActor
	var tabItem: any View { get }
	
}
