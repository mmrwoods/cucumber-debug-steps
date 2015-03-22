require 'coderay'
require 'htmlbeautifier'

unless defined?(Debugger) || defined?(Byebug)
  $stderr.puts("WARNING: cucumber-debug-steps requires a ruby debugger, please install debugger gem for ruby 1.9 or byebug for ruby 2")
end

module DebugStepsHelper
  def peek
    print CodeRay.scan(HtmlBeautifier.beautify(page.source), :html).term, "\n"
  end
end
World(DebugStepsHelper)

Then "peek" do
  peek
end

Then "debug" do
  debugger
  1
end
