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

get('/words/:word') do
  @definition = Definition.find()
end
