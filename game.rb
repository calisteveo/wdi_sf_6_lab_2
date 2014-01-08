pages_with_questions = {}

lines_grabbed = ""
key = ""

File.open("story.txt", "r") do |infile|
  while (line = infile.gets)
    if line.index("~p")
      key = line
      lines_grabbed = ""
    else
      lines_grabbed += line
    end
    pages_with_questions[key] = lines_grabbed
  end
end

p1 = pages_with_questions.select do |key, value|
	key.index("~p1")
end

p1.each do |k, v|
	puts v
end

puts "Please choose either 1, 2, or 3."

user_input = gets.chomp.to_i + 1

cx = pages_with_questions.select do |key, value|
	key.index("~p1 #{cx}")
end

cx.each do |k, v|
	puts v
end