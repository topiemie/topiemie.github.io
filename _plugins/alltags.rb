module Jekyll
  class AllTags < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @text = text
    end

    def render(context)
      # "#{@text} #{Time.now}"
      (context["page"]["tags"] || '').map{|x| "#{x},"}
    end
  end
end

Liquid::Template.register_tag('alltags', Jekyll::AllTags)
