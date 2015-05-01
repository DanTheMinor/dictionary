require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_expections, false)
require 'pry'

describe('The word definition path', {:type => :feature}) do
  it('links to word list or add word') do
    visit('/')
    click_link('See Word List')
    expect(page).to have_content('Words: ')
  end
