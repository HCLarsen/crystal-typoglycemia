class String
  def typoglycemize
    sentence = [] of String
    self.split.each do | word |
      chars = word.chars
      if chars.size > 2
        first = chars.shift
        last = chars.pop
        chars.shuffle!
        sentence << chars.unshift(first).push(last).join
      else
        sentence << word
      end
    end
    sentence.join(" ")
  end
end

string = "According to a research team at Cambridge University, it doesn't matter in what order the letters in a word are, the only important thing is that the first and last letter be in the right place. The rest can be a total mess and you can still read it without a problem. This is because the human mind does not read every letter by itself, but the word as a whole. Such a condition is appropriately called Typoglycemia."

puts string.typoglycemize