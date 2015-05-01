require('rspec')
require('definition')

describe(Definition) do
  describe("#definitions") do
    it("returns any definitions, should be empty on initialize") do
      some_word = Definition.new('some_word')
      expect(some_word.definitions()).to(eq([]))
    end
  end

  describe("#add_def") do
    it("adds a definition to an array of definitions") do
      some_word = Definition.new('conflagration')
      some_word.add_def('a great big fire')
      expect(some_word.definitions()).to(eq(['a great big fire']))
    end
  end

  describe(".all") do
    it("returns all words and definitions, should be empty at first") do
      some_word = Definition.new('conflagration')
      expect(Definition.all()).to(eq([]))
    end
  end

    describe("#save") do
      it("adds a definition and word pair to an array of word/definition pairs") do
        some_word = Definition.new('conflagration')
        some_word.add_def('a great big fire')
        some_word.add_def('a small fire')
        some_word.save()
        expect(Definition.all()).to(eq([['conflagration', 'a great big fire'], ['conflagration', 'a small fire']]))
      end
    end
end
