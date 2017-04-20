require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the path to game outcome', {:type => :feature}) do
  it('processes the player turn and computer turn and returns game results') do
    visit('/')
    click_button('play')
    expect(page).to have_content(@player,@computer)
  end
end
