######################################################################
# caesar_cipher- prompts user for a message and encypts message
# by changing each letter to 'key' number of space to the left on
# the alphabet. i.e. if key is 3 and user inputes 'd' the value 
# will change to ' a '
######################################################################
def caesar_cipher(key)
    puts "please enter a message"    
    message = gets.chomp            # prompts user for string input
    message_array = message.split(//)  # makes a character array wtih message input
    
    message_array.each_with_index do |letter, index|
        n = 26-key #subtracts key from 26 to "shift" to the left  
        
        n.times do #loops to "shift" left 'key' number of times
            if letter != " "

                if letter == 'z' # loops back to 'a' in the alphabet if character is 'Z'
                    letter ='a'
                    message_array[index] = letter
                    
                elsif letter == 'Z' # loops back to 'A' in the alphabet if character is 'Z'
                    letter ='A'
                    message_array[index] = letter
                    
                else
                letter.next!  
                end
            end
        end
    end
     puts message_array.join # message_array is converted back into a string
end

caesar_cipher(3) #calls Caesar _cipher with a key of 3