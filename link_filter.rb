require "find"

module Jekyll
  module LinkFilter
    def link(path)
      page = find_path(path)
      url = @context.registers[:site].config['url']
      "#{url}#{page}"
    end

    def find_path(path)
      r = Regexp.new("\/#{path}(\.[^.]+)?$", Regexp::IGNORECASE)
      dir = @context.registers[:site].config['destination']
      Find.find(dir) do |p|
        if r.match p
          return p.gsub(dir, "")
        end
      end
    end
  end
end

Liquid::Template.register_filter(Jekyll::LinkFilter)