class String
  define_method :beats do |second|
    if(self == "rock") && (second == "scissors")
      "true"
    elsif(self == "paper") && (second == "rock")
      "true"
    elsif(self == "scissors") && (second == "paper")
      "true"
    elsif (self == second)
      "tie"
    else
      "false"
    end
  end
end

class String
  define_method :compSel do
    computer = {1 => "rock", 2 => "paper" , 3 =>"scissors"}
    random_number = rand(1..3)
    output=computer[random_number]
  end
end
