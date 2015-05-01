class Word
  @@all_words = []
  attr_reader(:word, :definitions, :id)

  define_method(:initialize) do |word|
    @word = word
    @definitions = []
    @id = @@all_words.length + 1
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

  define_singleton_method(:find) do |identify|
    found_word = nil
    @@all_words.each do |word|
      found_word = word if word.id() == identify
    end
    return found_word
  end

  define_singleton_method(:find_word) do |word_find|
    found_word = nil
    @@all_words.each do |word|
      if word.word() == word_find
        found_word = word
      end
    end
    return found_word
  end

end
