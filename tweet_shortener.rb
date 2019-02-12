def dictionary
  dictionary = {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    'too' => '2',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@" ,
    "and" => "&",
  }
end

array = ["Tim Jones", "Tom Smith", "Jim Campagno"]
array.each do |name|
  name.split('').first
end

def word_substituter(tweet)
  new_array = []
  match = false
  tweet.split(' ').each do |word|
    if match == false
      dictionary.each do |key, value|
        if word == key
          new_array << value
          match = true
        end
      end
    end
    if match == false
      new_array << word 
    end
  end
  new_array
end

word_substituter("hello butt head and hello to you")