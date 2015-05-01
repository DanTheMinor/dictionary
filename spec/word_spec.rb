require('rspec')
require('word')
require('definition')


#rspec spec/word_spec.rb

describe(Word) do
  before() do
    Word.clear()
  end
  
  describe('#word') do
      it('returns the word of a given word object') do
          a_word = Word.new('conflagration')
          expect(a_word.word()).to(eq('conflagration'))
      end
    end

    describe('.all') do
      it('returns all words, should be empty at initialize') do
          a_word = Word.new('conflagration')
          expect(Word.all()).to(eq([]))
      end
    end

    describe('#save') do
      it("saves a word to the list of words") do
          a_word = Word.new('conflagration')
          a_word.save()
          expect(Word.all()).to(eq([a_word]))
      end
    end

    describe('#add_def') do
      it("adds a definition to a particular word object") do
        a_word = Word.new('conflagration')
        a_def = Definition.new('conflagration', 'a great big fire')
        a_word.add_def(a_def)
        expect(a_word.definitions()).to(eq(['a great big fire']))
      end
    end

    describe('.clear') do
      it("clears the all_words array of any word objects") do
        a_word = Word.new('conflagration')
        a_word.save()
        Word.clear()
        expect(Word.all()).to(eq([]))
      end
    end

    describe('.find_word') do
      it("finds a word object based on the word") do
        a_word = Word.new('conflagration')
        a_word.save()
        b_word = Word.new('tsunami')
        b_word.save()
        expect(Word.find_word('tsunami')).to(eq(b_word))
      end
    end
end
