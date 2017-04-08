line1 = "Table of Contents"
line2 = "Chapter 1:   Getting Started"
page1 = "page 1"
line3 = "Chapter 2:   Numbers"
page2 = "page 9"
line4 = "Chapter 3:   Letters"
page3 = "page 13"

line_width = 40

puts line1.center(line_width * 1.5)
puts
puts line2.ljust(line_width) + page1.rjust(line_width/4)
puts line3.ljust(line_width) + page2.rjust(line_width/4)
puts line4.ljust(line_width) + page3.rjust(line_width/4)
