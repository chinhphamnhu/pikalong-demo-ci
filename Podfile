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
