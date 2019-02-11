max_element = gets.to_i

def build_permutation(max)
    nones = []
    evens = []
    (1..max).each do |element|
        element.even? ? evens << element : nones << element
    end
    evens + nones
end

case 
    when max_element == 1
        puts "1"
    when max_element > 3
        puts build_permutation(max_element).join(' ')
    else
        puts "NO SOLUTION"
end