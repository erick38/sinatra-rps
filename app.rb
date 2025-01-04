require "sinatra"
require "sinatra/reloader"

get("/") do
erb(:home)
end

get("/rock") do
  moves = ['rock','paper','scissors']
computer_move = moves.sample
if computer_move == 'rock'
  outcome_t='tied'
elsif computer_move == 'paper'
  outcome_t='lose'
else computer_move == 'scissors'
  outcome_t='win'
end
@outcome_c = "They played #{computer_move}"
@outcome = "we #{outcome_t}"
  erb(:rock)
end

get("/paper") do
  moves = ['rock','paper','scissors']
  computer_move = moves.sample
  
  @outcome_c = "They played #{computer_move}"
  if computer_move == 'paper'
    outcome_t='tied'
  elsif computer_move == 'rock'
    outcome_t='win'
  else computer_move == 'scissors'
    outcome_t='lose'
  end
  @outcome_c = "They played #{computer_move}"
  @outcome = "we #{outcome_t}"
  erb(:paper)

end
get("/scissors") do
  moves = ['rock','paper','scissors']
  computer_move = moves.sample
  
  @outcome_c = "They played #{computer_move}"

  if computer_move == 'scissors'
    outcome_t='tied'
  elsif computer_move == 'rock'
    outcome_t='lose'
  else computer_move == 'paper'
    outcome_t='win'
  end
  @outcome_c = "They played #{computer_move}"
  @outcome = "we #{outcome_t}"
  erb(:scissors)
end
