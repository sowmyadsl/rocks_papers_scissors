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
  turn = ""
  @comprand = turn.compSel()

  @result = @player.beats(@comprand)
  if (@result == "true")
    @output="Player"
  elsif (@result == "tie")
    @output = "Its a Tie!"
  else
    @output="Computer"
  end
  erb(:winner)

end
