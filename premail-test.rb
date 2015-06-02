require 'premailer'

premailer = Premailer.new('https://blog.pusher.com/websockets-from-scratch/?utm_source=webopsweekly&utm_medium=email', :warn_level => Premailer::Warnings::SAFE)

# Write the HTML output
File.open("output.html", "w") do |fout|
  fout.puts premailer.to_inline_css
end

# Write the plain-text output
File.open("output.txt", "w") do |fout|
  fout.puts premailer.to_plain_text
end

# Output any CSS warnings
premailer.warnings.each do |w|
  puts "#{w[:message]} (#{w[:level]}) may not render properly in #{w[:clients]}"
end
