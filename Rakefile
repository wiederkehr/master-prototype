require "fileutils"
require "yaml"
require "./lib/sync_services"

#
# Config
#

BUILD_DIR = './build/'
PACKED_BUILD_DIR = './packed_builds/'
DEPLOY_SRC = BUILD_DIR                        # only deploy build dir
# DEPLOY_SRC = [BUILD_DIR, PACKED_BUILD_DIR]  # also deploy packed builds
REMOTES = YAML.load_file("remotes.yml")

namespace(:deploy) do
  desc "Deploy to production server"
  task :production => :build do
    SyncServices.sync(DEPLOY_SRC, REMOTES["production"])
  end

  desc "Deploy to staging server"
  task :staging => :build do
    SyncServices.sync(DEPLOY_SRC, REMOTES["staging"])
  end
end

namespace(:dry) do
  desc "Dry run to production server"
  task :production => :build do
    SyncServices.sync(DEPLOY_SRC, REMOTES["production"], :dry_run => true)
  end

  desc "Dry run to staging server"
  task :staging => :build do
    SyncServices.sync(DEPLOY_SRC, REMOTES["staging"], :dry_run => true)
  end
end

#
# Rake Tasks
#

task :default => :help

task :help do
  system "rake -T"
end

desc "Install dependencies"
task :install => ["node_modules", "bower_components"]

desc "Install Node modules"
file "node_modules" => ["package.json"] do |t|
  system "npm install"
  system "touch #{t.name}"
end

desc "Install Bower components"
file "bower_components" => ["bower.json"] do |t|
  system "node_modules/.bin/bower install"
  system "touch #{t.name}"
end

desc "Clean up builds and dependencies"
task :clean do
  rm_rf(BUILD_DIR)
  rm_rf(PACKED_BUILD_DIR)
  rm_rf('./.bundle')
  rm_rf('./components')
end

desc "Build Public HTML"
task :build => :install do
  system "bundle exec middleman build --clean"
end

desc "Pack build into ZIP"
task :pack_build => :build do
  file_name = "#{datetime_prefix}_build"
  mkdir PACKED_BUILD_DIR unless File.exists? PACKED_BUILD_DIR
  FileUtils.cd(PACKED_BUILD_DIR)
  cp_r "../#{BUILD_DIR}", file_name, {:remove_destination => true, :preserve => true}
  system "zip -r #{file_name} #{file_name}"
  rm_f('.DS_Store')
  rm_rf file_name
  FileUtils.cd('..')
end

desc "Run local development server"
task :server => :install do
  system "bundle exec middleman server"
end

#
# Helpers
#

def datetime_prefix
  Time.now.strftime('%y%m%d_%H%M%S')
end
