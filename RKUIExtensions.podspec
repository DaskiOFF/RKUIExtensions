#
# Be sure to run `pod lib lint RKUIExtensions.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RKUIExtensions'
  s.version          = '0.1.8'
  s.summary          = 'UI Extensions'


  s.homepage         = 'https://github.com/DaskiOFF/RKUIExtensions'
  s.documentation_url = 'https://daskioff.github.io/RKUIExtensions/'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'DaskiOFF' => 'waydeveloper@gmail.com' }
  s.source           = { :git => 'https://github.com/DaskiOFF/RKUIExtensions.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.source_files = 'Sources/**/*'

  s.frameworks = 'UIKit'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  UI Extensions

  0.1.8
    Swift 4.2
    [UIViewController] rename removeFromParent to removeFromParentVC for swift 4.2

  0.1.7
    Fix adjustsScrollViewInsetsFalseIfNeeded
    Fix adjustsScrollViewInsets

  0.1.6
    Fix 'public'

  0.1.5
    [UIViewController] Add ChildVC
    [CALayer] Add Shadow
    [UIButton] Add Images; Rename UIButton to UIButton+Colors

  0.1.4
    [UIView] Add makeImage

  0.1.3
    Add UINavigationItem (remove backButton)
    Update UIButton (adjustOneColor)
    Add UIViewController (iOS 9 ScrollView)
    Add UIView (Gradient)

  0.1.2
    Fix UIApplication topViewController

  0.1.1
    Update README

  0.1.0
    Init
                       DESC
end
