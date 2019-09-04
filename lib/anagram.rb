class Anagram

        attr_accessor :word
      
        def initialize(word)
          @word = word
        end 

        def match(arr)
            #store the indexes of words in arr that are anagrams of the original word
            index_arr = []
            #rearrange the original word to be alphabetical
            ordered = word.chars.sort.join
            #rearrange each word in arr to be alphabetical
            ordered_arr = arr.map {|word| word.chars.sort.join}
            #return all of the elements in the newly rearranged arr that match the rearranged original word
            matching_arr = ordered_arr.select {|word| word == ordered}
            #return the indices of the rearranged arr that are equal to the rearranged original word
            index_arr = ordered_arr.each_index.select {|i| matching_arr.include?(ordered_arr[i])}
            #for each matching index return the element at that index of the original arr
            index_arr.map {|i| arr[i]}
        end

end