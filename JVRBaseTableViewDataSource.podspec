Pod::Spec.new do |s|
  s.name         = "JVRBaseTableViewDataSource"
  s.version      = "0.0.7"
  s.summary      = "A basic, reusable and expandable UITableViewDataSource class"
  s.license      = { :type => "MIT"}
  s.author             = { "József Vesza" => "jozsef.vesza@lhsystems.com" }
  s.platform = :ios, '5.0'
  s.source_files  = "*.{h,m}"
  s.public_header_files = "*.h"
  s.exclude_files = "Lighter Table View/*"
  s.requires_arc = true
end
