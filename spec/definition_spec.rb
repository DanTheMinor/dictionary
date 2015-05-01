require('rspec')
require('definition')

describe(Definition) do
  before() do
    Definition.clear()
  end

  describe("#definitions") do
    it("returns the definition of a definition object") do
      some_word = Definition.new('a great big fire')
      expect(some_word.definition()).to(eq('a great big fire'))
    end
  end

  describe(".all") do
    it("returns all words and definitions, should be empty at first") do
      some_word = Definition.new('a great big fire')
      expect(Definition.all()).to(eq([]))
    end
  end

    describe("#save") do
      it("adds a definition to a list of all definitions") do
        some_word = Definition.new('a great big fire')
        another_word = Definition.new('a big wave')
        some_word.save()
        another_word.save()
        expect(Definition.all()).to(eq([some_word, another_word]))
      end
    end

    describe(".clear") do
      it("clears the array of all word/definition pairs") do
          some_word = Definition.new('a great big fire')
          some_word.save()
          Definition.clear()
          expect(Definition.all()).to(eq([]))
      end
    end

    describe(".find") do
      it("returns a definition object matching the definition ID") do
        some_def = Definition.new('a great big fire')
        some_def.save()
        some_def2 = Definition.new('a big wave')
        some_def.save()
        expect(Definition.find(some_def.id()))
      end
    end
end
