# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project'
require 'rubygems'

# Include the gems from the Gemfile.
require 'bundler'
Bundler.require

Motion::Project::App.setup do |app|
  
  # Set app name.
  app.name = 'rickaroons'

  # Set the app bundle identifier.
  app.identifier = 'com.mgartner.rickaroons'

  # Include frameworks.
  app.frameworks += ['AVFoundation', 'CoreData', 'CoreText', 'GLKit',
                     'ImageIO', 'OpenGLES', 'SystemConfiguration',
                     'QuartzCore']
  app.weak_frameworks += ['CoreLocation']

  # Libaries
  app.libs += ['/usr/lib/libc++.dylib', '/usr/lib/libicucore.dylib',
               '/usr/lib/libz.dylib']

  # Add the necessary cocoa pods.
  #app.pods do
   # pod "Google-Maps-iOS-SDK"
  #end

  # Include custom version of SEHumanizedTimeDiff
  app.vendor_project('vendor/GoogleMaps-iOS-1.3.0/GoogleMaps.framework', :static, :products => ['GoogleMaps'], :headers_dir => 'Headers')

end
