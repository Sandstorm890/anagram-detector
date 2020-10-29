require "pry"

class Anagram
    def initialize(word)
        @word = word
    end

    def match(anagrams)
        counter = 0
        new_array = []
        matches = []
        if anagrams.kind_of?(String)
            while counter < anagrams.split(" ").length
            
                
                anagrams.split(" ").each do |item|
                    if @word.split(//).sort == item.split(//).sort
                        matches << item
                        counter += 1
                    else
                        counter += 1
                        next
                    end
                end
            end
        elsif anagrams.kind_of?(Array)
            while counter < anagrams.length
                
                
                anagrams.each do |item|    
                    if @word.split(//).sort == item.split(//).sort
                        
                        matches << item
                        counter += 1
                    else
                        counter += 1
                        next
                    end
                end
            end
        else
            puts "Invalid format"
        end
        matches     
    end
end
