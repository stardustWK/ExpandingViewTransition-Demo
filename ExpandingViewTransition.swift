import UIKit

class ExpandingViewTransition: NSObject, UIViewControllerTransitioningDelegate {
    
    private let expandableView: UIView
    private let expandViewAnimationDuration: NSTimeInterval
    private let presentVCAnimationDuration: NSTimeInterval
    
    init(expandingView: UIView,
         expandViewAnimationDuration: NSTimeInterval = 0.35,
         presentVCAnimationDuration: NSTimeInterval = 0.35) {
        self.expandableView = expandingView
        self.expandViewAnimationDuration = expandViewAnimationDuration
        self.presentVCAnimationDuration = presentVCAnimationDuration
    }
    
    func animationControllerForPresentedController(
        presented: UIViewController,
        presentingController presenting: UIViewController,
                             sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        
        return ExpandingViewTransitionAnimatorPresent(expandableView: self.expandableView,
                                                      expandViewAnimationDuration: self.expandViewAnimationDuration,
                                                      presentVCAnimationDuration: self.presentVCAnimationDuration)
    }
    
    func animationControllerForDismissedController(
        dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return nil
    }
}
