class Definition
  attr_reader(:word, :definitions)

    define_method(:initialize) do |word|
    @word = word
    @definitions = []
  end

  define_method(:add_def) do |definition|
    @definitions.push(definition)
  end
end
