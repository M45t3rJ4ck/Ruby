# Require tools module
require_relative "modulesTools.rb"
# To use modules elsewhere
include Tools
# Call module to execute
puts "Line 1:"
Tools.sayhi("Riaan")
puts "Line 2:"
Tools.saybye("Riaan")
