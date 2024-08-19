<!-- Copy badges from SPI -->
[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fsimonnickel%2Fsnap-matching-navigation%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/simonnickel/snap-matching-navigation)
[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fsimonnickel%2Fsnap-matching-navigation%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/simonnickel/snap-matching-navigation) 

> This package is part of the [SNAP](https://github.com/simonnickel/snap) suite.


# SnapMatchingNavigation

Matching Navigation provides a SwiftUI container view that displays a TabView or SplitScene, based on the device. 

[![Documentation][documentation badge]][documentation] 

[documentation]: https://swiftpackageindex.com/simonnickel/snap-matching-navigation/main/documentation/snapmatchingnavigation
[documentation badge]: https://img.shields.io/badge/Documentation-DocC-blue


## Demo

The [demo project](/SnapMatchingNavigationDemo) shows an example on how to use the package.

<img src="/screenshot-iphone.png" height="400"> <img src="/screenshot-ipad.png" height="400">


## How to use


```
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
		
		<View for the tab>
		
	})
})
```

### MNavContainer

A container that either shows the `SplitScene` or the `TabScene` ViewBuilder based on device.


### MNavTabScene

A wrapper around TabView to expose the selected tab as a binding.
