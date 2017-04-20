require ('rocksgame')
require ('rspec')
require ('./lib/rocksgame')

describe("#rocksgame") do

  it("returns 'true' if player picks rock and the computer picks scissors") do
    expect("rock".beats("scissors")).to(eq('true'))
  end
  it("returns 'true' if player picks paper and the computer picks rock") do
    expect("paper".beats("rock")).to(eq('true'))
  end
  it("returns 'true' if player picks scissors and the computer picks paper") do
    expect("scissors".beats("paper")).to(eq('true'))
  end
  it("returns 'tie!' if player picks rock and the computer as well picks rock") do
    expect("rock".beats("rock")).to(eq("tie"))
  end
  it("returns 'false' if player picks scissors and computer picks rock") do
    expect("scissors".beats("rock")).to(eq('false'))
  end
  it("returns 'false' if player picks rock and computer picks paper") do
    expect("rock".beats("paper")).to(eq('false'))
  end
  it("returns 'false' if player picks paper and computer picks scissors") do
    expect("paper".beats("scissors")).to(eq('false'))
  end

end
