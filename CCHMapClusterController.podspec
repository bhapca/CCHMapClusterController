Pod::Spec.new do |spec|
  spec.name     = 'CCHMapClusterController'
  spec.version  = '1.7.0.1'
  spec.license  = 'MIT'
  spec.summary  = 'High-performance map clustering with MapKit for iOS and OS X. Integrate with 4 lines of code.'
  spec.homepage = 'http://gitlab/ios/CCHMapClusterController'
  spec.authors  = { 'Claus Höfele' => 'claus@claushoefele.com' }
  spec.social_media_url = 'https://twitter.com/claushoefele'
  spec.source   = { :git => 'git@gitlab.cj.psrk.com:ios/CCHMapClusterController.git', :tag => spec.version.to_s }
  spec.frameworks = 'MapKit', 'CoreLocation'
  spec.requires_arc = true

  spec.ios.deployment_target = '7.0'
  spec.osx.deployment_target = '10.9'

  spec.source_files = 'CCHMapClusterController/*.{h,m}'
  spec.private_header_files = 'CCHMapClusterController/{CCHMapTree,CCHMapTreeUtils,CCHMapClusterControllerUtils,CCHMapClusterControllerDebugPolygon,CCHMapClusterOperation,CCHMapViewDelegateProxy}.h'
end
