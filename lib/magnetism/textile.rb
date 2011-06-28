require 'RedCloth'

module Magnetism
  class Textile
    def initialize(content)
      @content = content
    end

    def to_html
      RedCloth.new(@content).to_html
    end

    def self.escape
      "<notextile>\n#{yield}\n</notextile>"
    end
  end
end
