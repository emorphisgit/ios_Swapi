#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint testsdk.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'emorphisgit'
  s.version          = '1.0.0'
  s.summary          = 'emorphisgit'
  s.description      = <<-DESC
A new SWAPIAPI.
                       DESC
  s.homepage         = 'https://github.com/emorphisgit/ios_Swapi'
  s.license          = { :type => 'Apache License, Version 1.0', :text => <<-LICENSE
    Licensed under the Apache License, Version 1.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-1.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
    LICENSE
  }
  s.author           = { 'Swapi_IOS' => 'nishant.mahajan@emorphis.com' }
  s.source           = { :git => 'https://github.com/emorphisgit/ios_Swapi.git', :tag => 'v1.0.0'}
  s.source_files = 'SWAPIAPI/*.*'

  s.platform = :ios, '9.0'

  # s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.ios.deployment_target = '11.0'
  s.swift_version = '5.0'
end

