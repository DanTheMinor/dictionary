require('rspec')
require('definition')

describe(Definition) do
  describe("#definitions") do
    it("returns the definition of a definition object") do
      some_word = Definition.new('conflagration', 'a great big fire')
      expect(some_word.definition()).to(eq('a great big fire'))
    end
  end

  describe(".all") do
    it("returns all words and definitions, should be empty at first") do
      some_word = Definition.new('conflagration', 'a great big fire')
      expect(Definition.all()).to(eq([]))
    end
  end

    describe("#save") do
      it("adds a definition and word pair to an array of word/definition pairs") do
        some_word = Definition.new('conflagration', 'a great big fire')
        another_word = Definition.new('tsunami', 'a big wave')
        some_word.save()
        another_word.save()
        expect(Definition.all()).to(eq([['conflagration', 'a great big fire'], ['tsunami', 'a big wave']]))
      end
    end

    # describe(".clear") do
    #   it("clears the array of all word/definition pairs") do
    #       some_word = Definition.new('conflagration')
    #       some_word.add_def('a great big fire')
    #       some_word.save()
    #       Definition.clear()
    #       expect(Definition.all()).to(eq([]))
    #   end
    # end
    #
    # describe(".word_def") do
    #   it("returns an array of all definitions of a particular word") do
    #       some_word = Definition.new('conflagration')
    #       another_word = Definition.new('tsunami')
    #       some_word.add_def('a great big fire')
    #       some_word.add_def('some big flames')
    #       another_word.add_def('a great big wave')
    #       some_word.save()
    #       another_word.save()
    #       expect(Definition.word_def('conflagration')).to(eq(['a great big fire', 'some big flames']))
    #   end
    # end
end
