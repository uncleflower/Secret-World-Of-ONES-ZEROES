//
//  See LICENSE folder for this template’s licensing information.
//
//  Abstract:
//  Provides supporting functions for setting up a live view.
//

import UIKit
import PlaygroundSupport

/// Instantiates a new instance of a live view.
///
/// By default, this loads an instance of `LiveViewController` from `LiveView.storyboard`.
public func instantiateLiveView(viewNumber: Int) -> PlaygroundLiveViewable {
//    let storyboard = UIStoryboard(name: "LiveView", bundle: nil)
//
//    guard let viewController = storyboard.instantiateInitialViewController() else {
//        fatalError("LiveView.storyboard does not have an initial scene; please set one or update this function")
//    }
//
//    guard let liveViewController = viewController as? LiveViewController else {
//        fatalError("LiveView.storyboard's initial scene is not a LiveViewController; please either update the storyboard or this function")
//    }

    switch viewNumber {
    case 0:
        return BinarySystem()
    case 1:
        return Begain()
    case 2:
        return BinarySystem()
    case 3:
        return Secret()
    case 4:
        return ByPen()
    case 5:
        return UseFunction()
    case 6:
        return Calculate()
    case 7:
        return BreakTheComputer()
    default:
        return Finally()
    }
}
