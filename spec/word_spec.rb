require('rspec')
require('word')
require('definition')


#rspec spec/word_spec.rb

describe(Word) do
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


end
