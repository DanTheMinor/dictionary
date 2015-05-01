class Definition
  @@word_def = [] #two dimensional array of words and their definitions
  attr_reader(:word, :definitions)

  define_method(:initialize) do |word|
    @word = word
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
end
