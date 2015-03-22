require 'coderay'
require 'htmlbeautifier'

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
