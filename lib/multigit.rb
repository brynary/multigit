require "rubygems"

unless $LOAD_PATH.include?(File.expand_path(File.dirname(__FILE__)))
  $LOAD_PATH.unshift(File.expand_path(File.dirname(__FILE__)))
end

require "multigit/config"
require "multigit/cli"

module Multigit
  VERSION = "0.1.0"
end