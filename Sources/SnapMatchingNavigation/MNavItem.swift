//
//  SNAP - https://github.com/simonnickel/snap
//  Created by Simon Nickel
//

import SwiftUI

public protocol MNavItem {

	typealias ID = String
	
	var id: MNavItem.ID { get }

	var tabItem: any View { get }
	
}
