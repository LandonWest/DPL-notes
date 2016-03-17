
def histogram
  puts "Enter your text to show frequency of each word: "
  text = gets.chomp
  # using the regular expression \W+ which will split on one or more non-word characters, ex. "one, two three: four"
  words = text.downcase.split(/\W+/)

  frequencies = Hash.new(0)

  words.each { |word| frequencies[word] += 1 }

  frequencies = frequencies.sort_by { |word, count| count }.reverse!

  frequencies.each { |word, count| puts word + ": " + count.to_s }
end

#_______________________________________________________________________________
#_______________________________________________________________________________

def redact
  puts "Enter secret message: "
  text = gets.chomp.downcase

  puts "What word(s) should be REDACTED? use a ',' to separate multiple words"
  redact = gets.chomp.downcase.split(", ")

  words = text.split(" ")

  redacted_message =
  words.each do |w|
      if redact.include? w
          print "REDACTED "
      else
          print w + " "
      end
  end

  puts "**begin redacted message** " + redacted_message.to_s + " **end redacted message"
end

#_______________________________________________________________________________
#_______________________________________________________________________________

# sort an array, the block uses the combined comparison operator to tell it to sort in descending order
fruits = %w(orange apple banana pear grapes)

fruits.sort! { |fruit1, fruit2| fruit2 <=> fruit1 }

#_______________________________________________________________________________
#_______________________________________________________________________________

# custom method to reverse an array alphabetically (or numerically)
def alphabetize(arr, rev = false)
    arr.sort!
    arr.reverse! if rev == true
end

names = %w( landon eric west john lewis zach )

puts alphabetize(names, rev=true)
