Pod::Spec.new do |s|
  s.name = "EZGraphQL"
  s.version = "0.1.1"
  s.summary = "A short description of EZGraphQL."

  s.description = <<-DESC
  EZ组件模版
                       DESC

  s.homepage = "'https://github.com/cocoa1/EZGraphQL"
  s.license = { :type => "MIT", :file => "LICENSE" }
  s.author = { "cocoa1" => "supercruze@163.com" }
  s.source = { :git => "git@github.com:cocoa1/EZGraphQL.git", :tag => s.version.to_s }

  s.ios.deployment_target = "12.0"
  s.static_framework = true
  # s.swift_version = "5.2"
  # s.libraries = "c++"
  # s.requires_arc = true

  s.source_files = "EZGraphQL/Classes/**/*"

  # s.prefix_header_contents = '#import "EZGraphQLPreHeader.h"'
  # s.resource_bundles = {
  #   "EZGraphQL" => ["EZGraphQL/Assets/*.xcassets"],
  # }

  s.pod_target_xcconfig = {
    "DEFINES_MODULE" => "YES",
    "GCC_PREPROCESSOR_DEFINITIONS" => "$(inherited) GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS=1",
  }
  s.user_target_xcconfig = {
    "DEFINES_MODULE" => "YES",
    "GCC_PREPROCESSOR_DEFINITIONS" => "$(inherited) GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS=1",
  }

   s.dependency "Apollo"

end
