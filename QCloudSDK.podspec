Pod::Spec.new do |s|
  s.name             = 'QCloudSDK'
  s.version          = '1.1.4.1'
  s.summary          = 'QCloud SDK for iOS.'
  s.homepage         = 'https://github.com/shingwasix/QCloudSDK'
  s.license          = { :type => 'Copyright', :file => 'LICENSE' }
  s.author           = { 'Shingwa Six' => 'http://github.com/shingwasix' }
  s.source           = { :git => "https://github.com/shingwasix/QCloudSDK.git", :tag => s.version.to_s }

  s.ios.deployment_target = '5.0'
  s.frameworks = 'SystemConfiguration','CoreTelephony'
  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-lObjC' }
  s.default_subspecs = 'Upload','Download'

  s.subspec 'Upload' do |sp|
    sp.libraries = 'stdc++.6','z'
    sp.source_files = 'Officical-Sources/QCloudUploadSDK/*.h'
    sp.vendored_libraries = 'Officical-Sources/QCloudUploadSDK/*.a'
    sp.public_header_files = 'Officical-Sources/QCloudUploadSDK/*.h'
  end

  s.subspec 'Download' do |sp|
    sp.frameworks = 'MobileCoreServices'
    sp.libraries = 'stdc++.6','xml2','z'
    sp.source_files = 'Officical-Sources/QCloudDownloadSDK/*.h'
    sp.vendored_libraries = 'Officical-Sources/QCloudDownloadSDK/*.a'
    sp.public_header_files = 'Officical-Sources/QCloudDownloadSDK/*.h'
  end
end
