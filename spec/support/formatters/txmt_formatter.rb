require 'rspec/core/formatters/documentation_formatter'
class TxmtFormatter < RSpec::Core::Formatters::DocumentationFormatter
  def backtrace_line(line)
    format_backtrace_line_for_textmate(super(line))
  end

  def format_backtrace_line_for_textmate(line)
    return nil unless line
    CGI.escapeHTML(line).sub(/([^:]*\.e?rb):(\d*)/) do
      "txmt://open?url=file://#{File.expand_path($1)}&line=#{$2}\ "
    end
  end

end
