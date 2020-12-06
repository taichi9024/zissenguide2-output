module HtmlBuilder
    def markup(tag_name = nil, options = {})
      root = Nokogiri::HTML::Builder::DocumentFragment.parse("")
      Nokogiri::HTML::Builder::with(root) do |doc|
        if tag_name
            doc.method_missing(tag_name, options) do
                yield(doc)
            end
        else
            yield(doc)
        end
      end
      root.to_html_safe
    end
end