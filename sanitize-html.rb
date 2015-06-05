require 'nokogiri'
require 'sanitize'


f = File.open('/Users/adachi/Documents/Kaihatsu/inlinecss-test/extract4.html')
@html = Nokogiri::HTML(f)
f.close

@stripped_html = Sanitize.document(@html,
  :elements => ['html', 'body', 'a', 'abbr', 'acronym', 'address', 'area', 'b', 'bdo', 'big', 'blockquote', 'br', 'caption', 'center', 'cite', 'code', 'col', 'colgroup', 'dd', 'del', 'dfn', 'div', 'dl', 'dt', 'em', 'font', 'h1', 'h2', 'h3', 'h4', 'h5', 'h6', 'hr', 'i', 'img', 'ins', 'kbd', 'li', 'map', 'ol', 'p', 'pre', 'q', 's', 'samp', 'small', 'span', 'strike', 'strong', 'sub', 'sup', 'table', 'tbody', 'td', 'tfoot', 'th', 'thead', 'title', 'tr', 'tt', 'u', 'ul', 'var', 'xmp'],
  :attributes => {
    :all    => ['href', 'title', 'style', 'id', 'class']
  }
)

File.open('striped2.html', "w") do |fout|
  p fout.puts @stripped_html
end

