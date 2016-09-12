Pod::Spec.new do |s|
  s.name             = 'QCloudSDK'
  s.version          = '1.1.4.2'
  s.summary          = 'QCloud SDK for iOS.'
  s.homepage         = 'https://github.com/shingwasix/QCloudSDK'
  s.license          = { :type => 'Copyright', :text => 'Copyright ©2013-2016 Qcloud.com' }
  s.author           = { 'Shingwa Six' => 'http://github.com/shingwasix' }
  s.source           = { :http => "https://mc.qcloudimg.com/static/archive/a78a41f6eb769e421aa41fa607bc1501/qcloud-image-ios-v1.1.4.2.zip", :sha1 => 'a245280e55dcf2e60a53c38161b792f781d71b70' }

  s.ios.deployment_target = '5.0'
  s.frameworks = 'SystemConfiguration','CoreTelephony'
  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-lObjC' }
  s.default_subspecs = 'Upload','Download'

  s.subspec 'Upload' do |sp|
    sp.libraries = 'stdc++.6','z'
    sp.source_files = 'qcloud-image-ios-v1.1.4.2/QCloudUploadSDK/*.h'
    sp.vendored_libraries = 'qcloud-image-ios-v1.1.4.2/QCloudUploadSDK/bitcode/真机&模拟器/*.a'
    sp.public_header_files = 'qcloud-image-ios-v1.1.4.2/QCloudUploadSDK/*.h'
  end

  s.subspec 'Download' do |sp|
    sp.frameworks = 'MobileCoreServices'
    sp.libraries = 'stdc++.6','xml2','z'
    sp.source_files = 'qcloud-image-ios-v1.1.4.2/QCloudDownloadSDK/真机&模拟器/QCloudDownloadSDK/Headers/*.h'
    sp.vendored_libraries = 'qcloud-image-ios-v1.1.4.2/QCloudDownloadSDK/真机&模拟器/QCloudDownloadSDK/*.a'
    sp.public_header_files = 'qcloud-image-ios-v1.1.4.2/QCloudDownloadSDK/真机&模拟器/QCloudDownloadSDK/Headers/*.h'
  end
end