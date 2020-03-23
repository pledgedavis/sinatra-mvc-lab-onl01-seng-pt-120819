class PigLatinizer 
    def piglatinize(input_str)	
        piglatin_word(input_str)	
        input_str.split(" ").count > 1 ?  piglatin_sentence(input_str) : piglatin_word(input_str)	
      end	
    
    
      def piglatin_word(word)	
        if word[0].match(/[aAeEiIoOuU]/)	
           word = word + "w"	
        else	
          letter_array = word.split("")	
          con = []	
          while !letter_array.first.match(/[aAeEiIoOuU]/)	
            con << letter_array.shift	
          end	
          word = letter_array.join("") + con.join("")	
        end	
        word + "ay"	
      end	
    
      def piglatin_sentence(sentence)	
        word_array = sentence.split(" ")	
        new_word_array = []	
        word_array.each {|word| new_word_array << piglatin_word(word)}	
        new_word_array.join(" ")	
      end	
    end