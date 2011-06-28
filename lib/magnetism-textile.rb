require 'magnetism'
require 'magnetism/textile'

if defined? Magnetism
  Magnetism.content_parser = Magnetism::Textile
end
