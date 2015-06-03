require 'nokogiri'

f = File.open("output3.html")
@doc = Nokogiri::HTML(f)
f.close

File.open("extract3.html", "w") do |fout|
 fout.puts @doc.xpath("//body")
end

