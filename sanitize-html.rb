require 'sanitize'


html = File.open('/Users/adachi/Documents/Kaihatsu/inlinecss-test/extract4.html')
@striped_html = Sanitize.fragment(html,
  :elements => ['a', 'span'],

  :attributes => {
    'a'    => ['href', 'title'],
    'span' => ['class']
  },

  :protocols => {
    'a' => {'href' => ['http', 'https', 'mailto']}
  }
)
File.open('striped.html', 'w') do |fout|
  puts @stripped_html
end
html.close
