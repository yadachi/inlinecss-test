require 'net/http'
require 'roadie'

uri = URI('https://gist.github.com/staltz/868e7e9bc2a7b8c1f754#file-introrx-md')
html = Net::HTTP.get(uri)

document = Roadie::Document.new html

File.open("output3.html", "w") do |fout|
  fout.puts document.transform
end

