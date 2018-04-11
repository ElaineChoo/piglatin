# write your solution here
def piglatin (word)
    vowels = ["a", "e", "i", "o", "u"]

     if !vowels.include?(word[0])
        id = 0

        if word[0, 2] == "qu"
            return result = word[2..-1] + word[0, 2] + "ay"
       
        elsif word[0, 3] == "squ"
           return result = word[3..-1] + word[0, 3] + "ay"

        elsif word[0] == "y"
           return result = word[1..-1] + "yay"

        elsif word.include?("y")
            count = word.index("y")
           return result = word[count..-1] + word[0..(count-1)] + "ay"
        
        else
            while !vowels.include?(word[id])
                id += 1
            end
            return result = word[id..-1] + word[0..(id-1)] + "ay"
        end
    end
    
    result = word + "way"
end

puts "Enter Word : "
word = gets.chomp
puts piglatin(word)