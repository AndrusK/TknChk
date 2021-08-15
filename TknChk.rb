file = File.open(ARGV[0])
file_contents = file.readlines.map(&:chomp)

def create_char_matrix (arr)
    char_matrix = Array.new
    arr.each {|item|
        char_matrix.append(item.chars)
    }
    return char_matrix
end

def vertical_array(arr)
    out_arr = Array.new
    i = 0
    while i <= arr[0].length() - 1
        temp_arr = Array.new
        for items in arr
            temp_arr.append(items[i])
        end
        out_arr.append(temp_arr)
        i+=1
    end
    return out_arr
end

def find_common_at_index(arr)
    found = ""
    x = 0
    while x <= arr.length() - 1
        if arr[x].uniq.size <= 1
            found += arr[x][0]
            puts "\nCommon char found ==> #{arr[x][0]}\nCurrent Discoved Duplicates: #{found}\n"
        end
        x+=1
    end
    return found
end

puts "\nFinal duplicates are: #{find_common_at_index(vertical_array(create_char_matrix(file_contents)))}"
