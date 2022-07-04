# require "bundler"
# Bundler.require

$:.unshift File.expand_path("../lib", __FILE__)

require_relative "lib/router"
require_relative "lib/controller"

Router.new.perform