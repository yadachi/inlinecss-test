require 'roadie'
html = <<-HTML
<html>
  <head>
  <link rel="stylesheet" type="text/css" href="primary.css">
  </head>
  <body>
  </body>
</html>
HTML

Dir.pwd # => "/home/user/foo"
document = Roadie::Document.new html
puts document.transform
