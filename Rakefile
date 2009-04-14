require(File.join(File.dirname(__FILE__), 'config', 'boot'))

require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'

require 'tasks/rails'

require 'vlad'
Vlad.load :scm => :git

namespace :vlad do
  desc "Update code and restart Mongrels on the specified server"
  task :deploy => ["vlad:update", "vlad:start_app", "vlad:cleanup"]
end
