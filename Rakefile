require "rake/clean"
CLEAN.include ["rdoc", "*.gem"]

require "rdoc/task"
RDoc::Task.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "hanna-nouveau #{version}"
  rdoc.options = ['-f', 'hanna']
  rdoc.rdoc_files.add %w"README.rdoc LICENSE lib/hanna-nouveau.rb"
end
