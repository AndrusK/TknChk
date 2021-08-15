tokens = File.open(ARGV[0])
token_arr = tokens.readlines.map(&:chomp)
char_matrix = Array.new
final_matrix = Array.new
found_token = ""


token_arr.each {|token|
    char_matrix.append(token.chars)
}

i = 0
while i <= char_matrix[0].length() - 1
    temp_arr = Array.new
    for token in char_matrix
        temp_arr.append(token[i])
    end
    final_matrix.append(temp_arr)
    i+=1
end

x = 0
while x <= final_matrix.length() - 1
    if final_matrix[x].uniq.size <= 1
        found_token += final_matrix[x][0]
        puts "\nCommon char found ==> #{final_matrix[x][0]}\nCurrent Discoved Token: #{found_token}\n"
    end
    x+=1
end

puts "\n\nFinal Token: #{found_token}"
