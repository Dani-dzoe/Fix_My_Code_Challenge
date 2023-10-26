###
#
#  Sort integer arguments (ascending) 
#
###

result = []
ARGV.each do |arg|
    # Check if the argument is an integer
    if arg =~ /^-?\d+$/
        i_arg = arg.to_i

        # Find the correct position to insert the integer
        index_to_insert = 0
        while index_to_insert < result.length && result[index_to_insert] < i_arg
            index_to_insert += 1
        end

        # Insert the integer at the determined position
        result.insert(index_to_insert, i_arg)
    end
end

puts result
