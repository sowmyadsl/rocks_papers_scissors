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
