require ('rocksgame')
require ('rspec')
require ('./lib/rocksgame')

  describe("#rocksgame") do

    it("returns true if rock beats scissors") do
      expect("rock".beats?("scissors")).to(eq(true))
    end

end
