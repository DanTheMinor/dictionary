class Word
  @@all_words = []
  attr_reader(:word)

  define_method(:initialize) do |word|
    @word = word
  end

  define_singleton_method(:all) do
    @@all_words
  end

end
