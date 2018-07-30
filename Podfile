# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'moongae' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!
pod "DBSphereTagCloud"
pod 'DCPathButton', '~> 2.1.3'
pod 'TagListView', '~> 1.0'
pod 'ImageSlideshow', '~> 1.6'
pod 'ImageSlideshow/Alamofire'
pod "ImageSlideshow/AFURL"
pod "ImageSlideshow/SDWebImage"
pod "ImageSlideshow/Kingfisher"


post_install do |installer|
  installer.pods_project.build_configurations.each do |config|
    config.build_settings.delete('CODE_SIGNING_ALLOWED')
    config.build_settings.delete('CODE_SIGNING_REQUIRED')
  end
end

  # Pods for moongae

end
