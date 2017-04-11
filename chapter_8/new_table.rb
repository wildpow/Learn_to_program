arr = ["Table of Contents",
        "Chapter 1:   Getting Started",
        "page 1",
        "Chapter 2:   Numbers",
        "page 9",
        "Chapter 3:   Letters",
        "page 13"]

line_width = 40

puts arr[0].center(line_width * 1.5)
puts
puts arr[1].ljust(line_width) + arr[2].rjust(line_width/4)
puts arr[3].ljust(line_width) + arr[4].rjust(line_width/4)
puts arr[5].ljust(line_width) + arr[6].rjust(line_width/4)
