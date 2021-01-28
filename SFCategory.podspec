#
# Be sure to run `pod lib lint SFCategory.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SFCategory'
  s.version          = '0.1.2'
  s.summary          = 'A short description of SFCategory.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/jack110530/SFCategory'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'jack110530' => 'jack110530@163.com' }
  s.source           = { :git => 'https://github.com/jack110530/SFCategory.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'SFCategory/Classes/SFCategory.h'
  s.public_header_files = 'SFCategory/Classes/SFCategory.h'
  
  # SFFoundation
  s.subspec 'SFFoundation' do |ss|

    ss.source_files = 'SFCategory/Classes/SFFoundation/SFFoundation.h'
    ss.public_header_files = 'SFCategory/Classes/SFFoundation/SFFoundation.h'

    # NSObject
    ss.subspec 'NSObject' do |sss|
      sss.source_files = 'SFCategory/Classes/SFFoundation/NSObject/*.{h,m}'
    end

    # NSString
    ss.subspec 'NSString' do |sss|
      sss.source_files = 'SFCategory/Classes/SFFoundation/NSString/*.{h,m}'
    end

  end

  # SFKit
  s.subspec 'SFKit' do |ss|

    ss.source_files = 'SFCategory/Classes/SFKit/SFKit.h'
    ss.public_header_files = 'SFCategory/Classes/SFKit/SFKit.h'

    # UIView
    ss.subspec 'UIView' do |sss|
      sss.source_files = 'SFCategory/Classes/SFKit/UIView/*.{h,m}'
    end

    # UIControl
    ss.subspec 'UIControl' do |sss|
      sss.source_files = 'SFCategory/Classes/SFKit/UIControl/*.{h,m}'
      sss.dependency 'SFCategory/SFFoundation/NSObject'
    end

    # UIButton
    ss.subspec 'UIButton' do |sss|
      sss.source_files = 'SFCategory/Classes/SFKit/UIButton/*.{h,m}'
      sss.dependency 'SFCategory/SFFoundation/NSObject'
    end

    # UIImage
    ss.subspec 'UIImage' do |sss|
      sss.source_files = 'SFCategory/Classes/SFKit/UIImage/*.{h,m}'
    end

    # UIViewController
    ss.subspec 'UIViewController' do |sss|
      sss.source_files = 'SFCategory/Classes/SFKit/UIViewController/*.{h,m}'
    end

    # SFProtocol
    ss.subspec 'SFProtocol' do |sss|
      sss.source_files = 'SFCategory/Classes/SFKit/SFProtocol/*.{h,m}'
    end

    # UITableView
    ss.subspec 'UITableView' do |sss|
      sss.source_files = 'SFCategory/Classes/SFKit/UITableView/*.{h,m}'
      sss.dependency 'SFCategory/SFKit/SFProtocol'
      sss.dependency 'SFCategory/SFFoundation/NSObject'
    end

    # UICollectionView
    ss.subspec 'UICollectionView' do |sss|
      sss.source_files = 'SFCategory/Classes/SFKit/UICollectionView/*.{h,m}'
      sss.dependency 'SFCategory/SFKit/SFProtocol'
      sss.dependency 'SFCategory/SFFoundation/NSObject'
    end
    

  end
  
  # s.resource_bundles = {
  #   'SFCategory' => ['SFCategory/Assets/*.png']
  # }

  s.frameworks = 'UIKit', 'Foundation'
  s.dependency 'YYCategories'
  
end
