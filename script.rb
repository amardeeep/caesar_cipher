require 'pry-byebug'
def caesar_cipher(string,shift_factor)
    array=string.split('')
    array.map! do |char|
        #Do not mutate non alphabetic characters
        if char=~/[^a-zA-Z_]/ 
            char
        else
            #shifted_ord store the ascii value and add shift_factor in it 
            shifted_ord=char.ord+shift_factor
            #check if char is upcase or downcase and if after shifting char is greater than z shift down by 26
            if char==char.upcase and shifted_ord>'Z'.ord
                shifted_ord-=26
            end
            if char==char.downcase and shifted_ord>'z'.ord
                shifted_ord-=26
            end
            #convert ascii value to character
            shifted_ord.chr
        end
    end
    #return string my joining array
    array.join('')
end
    
print caesar_cipher('Zygzy129?',4)