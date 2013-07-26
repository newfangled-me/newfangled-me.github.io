class Image < Liquid::Tag
  Syntax = /^\s*([^\s]+)(\s+(\d+)\s+(\d+)\s*)?/
 
  def initialize(tagName, markup, tokens)
    super
 
    if markup =~ Syntax then
      @name = $1
 
      @width = $2
    else
      raise "No image name provided in the \"image\" tag"
    end
  end
 
  def render(context)
    if @width
      "<img src=\"/images/#{@name}\" width=\"#{@width}\">"
    else
      "<img src=\"/images/#{@name}\">"
    end
  end
 
  Liquid::Template.register_tag "image", self
end