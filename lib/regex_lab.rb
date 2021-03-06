require 'pry'
def starts_with_a_vowel?(word)
  if word.scan(/\A+[aeiouAEIOU]/) == []
    false
  else
    true
  end
end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/\bun\w*ing\b/)
end

def words_five_letters_long(text)
  text.scan(/\b\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  if text.scan(/\A[A-Z].*\b[[:punct:]]$/) == []
    false
  else
    true
  end
end

def valid_phone_number?(phone)
  if phone.scan(/\A\d{10}\z/) == [] && phone.scan(/((\(\d{3}\) ?)|(\d{3}-))?\d{3}-?\d{4}/) == [] && phone.scan(/\A\d{3}( )\d{3}( )\d{4}\z/) == []
    false
  else
    true
  end
end
