def generate_document(chars, doc)
  # if chars provided is empty then just return false
  return false unless chars.length > 0

  hash = Hash.new

  # Extract the chars count information
  chars.each_char { |char| hash[char] = hash[char] ? hash[char] + 1 : 1 }

  doc.each_char do |c|
    # if there is a char that is finished counting
    # then the characters not fitting the document
    return false if hash[c] == 0

    # decrease the count of the character if it is greater than 0
    hash[c] = hash[c] - 1 if hash[c] && hash[c] > 0
  end

  return true
end
