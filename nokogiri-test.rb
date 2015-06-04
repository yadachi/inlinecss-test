require 'nokogiri'

f = File.open("output4.html")
@doc = Nokogiri::HTML(f)
f.close

File.open("extract4.html", "w") do |fout|
 fout.puts @doc.xpath("//body")
end

