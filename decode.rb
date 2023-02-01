def decode_char(message)
  letters = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D',
    '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
    '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
    '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P',
    '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
    '-.--' => 'Y', '--..' => 'Z'
  }

  letters[message]
end

print decode_char('.-')
# A

def decode_word(word)
  decoded_word = ''
  word_array = word.split

  word_array.each do |charachter|
    decoded_word += decode_char(charachter)
  end
  decoded_word
end

print decode_word('-- -.--')
# "MY"

def decode_sentence(sentence)
  sentence_array = sentence.split('  ')
  decoded_sentence = ''

  sentence_array.each do |word|
    decoded_sentence += decode_word(word)
    decoded_sentence += ' '
  end
  decoded_sentence
end
