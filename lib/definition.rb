class Definition
  @@word_def = [] #two dimensional array of words and their definitions
  attr_reader(:word, :definitions)

  define_method(:initialize) do |word|
    @word = word #this is sort've in place of an ID
    @definitions = []
  end

  define_method(:add_def) do |definition|
    @definitions.push(definition)
  end

  define_method(:save) do
    word = self.word()
    @definitions.each do |definition|
      @@word_def.push([word, definition])
    end
  end

  define_singleton_method(:all) do
    @@word_def
  end

  define_singleton_method(:clear) do
    @@word_def = []
  end

  define_singleton_method(:word_def) do |word_find|
    defs_to_return = []
    @@word_def.each do |word, definition|
      if word_find == word
        defs_to_return.push(definition)
      end
    end
    return defs_to_return
  end

end
