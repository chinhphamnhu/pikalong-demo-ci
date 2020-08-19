platform :ios, '10.0'
inhibit_all_warnings!
use_frameworks!

def app_pods
    pod 'ObjectMapper'
    pod 'Alamofire'
    pod 'AlamofireNetworkActivityIndicator'
    pod 'SwifterSwift'
    pod 'AsyncSwift'
    pod 'SDWebImage'
    pod 'SVProgressHUD'
    pod 'SwiftLint'
    pod 'R.swift'
end

def test_pods
    pod 'Nimble'
    pod 'Quick'
    pod 'OHHTTPStubs/Swift'
end

target 'Pikalong' do
    project 'Pikalong'
    app_pods

    target 'PikalongTests' do
        inherit! :search_paths
        test_pods
    end

    target 'PikalongUITests' do
        # Pods for testing
    end
end

# post_install do |installer_representation|
#     installer_representation.pods_project.targets.each do |target|
#         target.build_configurations.each do |config|
#             config.build_settings['SWIFT_VERSION'] = '4.2'
#             config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '12.0'
#             config.build_settings['ALWAYS_EMBED_SWIFT_STANDARD_LIBRARIES'] = '$(inherited)'
#         end
#     end
# end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
        config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '12.0'
            if config.name == 'Debug'
                config.build_settings['OTHER_SWIFT_FLAGS'] = ['$(inherited)', '-Onone']
                config.build_settings['SWIFT_OPTIMIZATION_LEVEL'] = '-Owholemodule'
            end
            if config.name.start_with? 'Release'
                config.build_settings['SWIFT_COMPILATION_MODE'] = 'wholemodule'
            end
        end
    end
end
