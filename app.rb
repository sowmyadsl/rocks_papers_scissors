require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rocksgame')
require('./lib/rocksgame')
require('pry')

get('/') do
  erb(:index)
end

get('/display') do
  @player = params.fetch('player')
  @computer = params.fetch('computer')

  @result = @player.beats(@computer)
  if (@result == "true")
    @output="player Wins!"
  elsif (@result == "tie")
    @output = "Its a Tie!"
  else
    @output="computer Wins!"
  end
  erb(:winner)

end
