#
#  Be sure to run `pod spec lint Masonry-FlattenLayout.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "Masonry-FlattenLayout"
  s.version      = "0.1.0"
  s.summary      = "More ergonomic thinkable and readable code with the new methods: .gap() .equalTill() .greaterOrEqualTill()"

  s.description  = <<-DESC
                   Masonry is good and this extension makes it better!
                   
                   Previously, an relative layout is a point to point assignment.
                   An example for the view1's mas_make:
                   - make.right.equalTo(view2.mas_left).offset(-10)
                   The right layout constraint of view1 are considered with particular edge, not with particular view.
                   The .offset(-10) is similar so we need thinking its value should be whether positive nor negative.
                   
                   * equalTill(), provides a view based assignment method in flatten layout
                     make.right.equalTill(view2) is same as make.right.equalTo(view2.mas_left)
                     The magic of this mechanism work is .equalTill() will lookup the firstLayoutAttribute of contraint and deciding which secondLayoutAttribute should be.
                     Also, make.top.equalTill(view2) is same as make.top.equalTo(view2.mas_bottom)
                   
                   * gap(), provide a view based offset value
                     make.right.equalTo(view2.mas_left).gap(10) is same as make.right.equalTo(view2.mas_left).offset(-10)
                   
                   Seen that? View based flatten layout gives you an easier life!
                   You won't confusing which edge is need in relative layout and it autocompleted with equalTill()
                   
                   One more, make the combination (of course you can):
                   make.right.equalTill(view2).gap(10)
                   DESC

  s.homepage     = "https://github.com/doggy/Masonry-FlattenLayout"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Licensing your code is important. See http://choosealicense.com for more info.
  #  CocoaPods will detect a license file if there is a named LICENSE*
  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
  #

  # s.license      = "MIT (example)"
  s.license      = { :type => "MIT", :file => "LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the authors of the library, with email addresses. Email addresses
  #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
  #  accepts just a name if you'd rather not provide an email address.
  #
  #  Specify a social_media_url where others can refer to, for example a twitter
  #  profile URL.
  #

  s.author             = { "doggy" => "doggy8@gmail.com" }
  # Or just: s.author    = ""
  # s.authors            = { "" => "" }
  s.social_media_url   = "https://www.facebook.com/lexus.lai.5"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  # s.platform     = :ios
  s.platform     = :ios, "6.0"

  #  When using multiple platforms
  # s.ios.deployment_target = "5.0"
  # s.osx.deployment_target = "10.7"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP.
  #

  s.source       = { :git => "https://github.com/doggy/Masonry-FlattenLayout.git", :tag => s.version }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any h, m, mm, c & cpp files. For header
  #  files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  s.source_files  = "Masonry+FlattenLayout", "Masonry+FlattenLayout/**/*.{h,m}"
  s.exclude_files = "Classes/Exclude"

  # s.public_header_files = "Classes/**/*.h"


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # s.framework  = "SomeFramework"
  # s.frameworks = "SomeFramework", "AnotherFramework"

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  s.dependency "Masonry", "~> 0.6.3"

end
