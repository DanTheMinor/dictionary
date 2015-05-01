class Word
  @@all_words = []
  attr_reader(:word, :definitions)

  define_method(:initialize) do |word|
    @word = word
    @definitions = []
  end

  define_singleton_method(:all) do
    @@all_words
  end

  define_method(:save) do
    @@all_words.push(self)
  end

  define_method(:add_def) do |definition|
    @definitions.push(definition.definition())
  end

  define_singleton_method(:clear) do
    @@all_words = []
  end

end
