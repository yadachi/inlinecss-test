require 'net/http'
require 'roadie'

uri = URI('https://blog.pusher.com/websockets-from-scratch/?utm_source=webopsweekly&utm_medium=email')
html = Net::HTTP.get(uri)

document = Roadie::Document.new html

File.open("output2.html", "w") do |fout|
  fout.puts document.transform
end

