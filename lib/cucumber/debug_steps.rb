require 'coderay'
require 'htmlbeautifier'

module DebugStepsHelper
  def peek
    print CodeRay.scan(beautify_html(page.source), :html).term
  end

  def beautify_html(input)
    if HtmlBeautifier.respond_to?(:beautify)
      output = HtmlBeautifier.beautify(input)
    else
      output = String.new
      HtmlBeautifier::Beautifier.new(output).scan(input)
    end
    output << "\n"
  end
end
World(DebugStepsHelper)

Then 'peek' do
  peek
end

Then "debug" do
  debugger
  1
end
