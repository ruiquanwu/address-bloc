def number_to_word num
  word = []
  num_ary = []
  #split number into chunck with 3 digit
  while num > 0
    num_ary << (num % 1000).to_s
    num = num / 1000
  end
  #puts postfix
  #puts word
  #conver each chunk of number_string to word and correctsponding postfix
  num_ary.each_with_index do |num_str|
    
  end
end

def conver_word(num_s, index)
  postfix1 = ["hundred", "ten", ""]
  postfix2 = ["billion", "million", "thousand", ""]
  word_map = ["nine", "eight", "seven", "six", "five", "four", "three", "two", "one"]

  num_s_ary = num_s.split("")
  result = []
  num_s_ary.each do |num|
    word << word_map[num.to_i - 1]
  end
  
end


puts number_to_word ARGV[0].to_i