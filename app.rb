require('sinatra')
require('sinatra/reloader')
require('./lib/definition')
require('./lib/word')
also_reload('lib/**/*.rb')
require('pry')

get('/') do
  erb(:index)
end

get('/words/new') do
  erb(:words_form)
end

get('/words') do
  @words = Word.all()
  erb(:words)
end

post('/words') do
  word = params.fetch('word')
  @word = Word.new(word)
  @word.save()
  @words = Word.all()
  erb(:success)
end

get('/definitions/:id') do
  @definition = Definition.find(params.fetch('id'))
  erb(:vehicle)
end

get('/words/:id') do
  @word = Word.find(params.fetch('id').to_i())
  binding.pry
  erb(:word)
end

get('/words/id:/definitions/new') do
  @dealership = Dealership.find(params.fetch('id').to_i())
  erb(:word_definition_form)
end
