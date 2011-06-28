require 'spec_helper'

describe Magnetism::Textile do
  describe '#to_html' do
    it 'parses the content into html' do
      content = <<-HTML
h1. Header 1

h2. Header 2

Paragraph 1
      HTML

      html_content = <<-HTML
<h1>Header 1</h1>
<h2>Header 2</h2>
<p>Paragraph 1</p>
      HTML

      html_content.chomp!
      Magnetism::Textile.new(content).to_html.should eq(html_content)
    end
  end

  describe '.escape' do
    it 'wraps the passed block with <textile> and </textile>' do
      content = "block content"
      escaped_content = <<-STR
<textile>
#{content}
</textile>
      STR
    end
  end
end
