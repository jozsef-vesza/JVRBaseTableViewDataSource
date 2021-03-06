Pod::Spec.new do |s|
  s.name         = "JVRBaseTableViewDataSource"
  s.version      = "0.0.2"
  s.summary      = "A basic, reusable and expandable UITableViewDataSource class"
  s.homepage     = "https://github.com/jozsef-vesza/JVRBaseTableViewDataSource"
  s.license      = { :type => "MIT"}
  s.author             = { "jozsef-vesza" => "email@address.com" }
  s.source       = { :git => "https://github.com/jozsef-vesza/JVRBaseTableViewDataSource.git", :tag => s.version }
  s.platform = :ios, '5.0'
  s.source_files  = "*.{h,m}"
  s.exclude_files = "Lighter Table View/*"
  s.requires_arc = true
end
