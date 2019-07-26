class Room

  attr_reader :name, :guestcount, :tracks

  def initialize(name, guestcount, tracks)
    @number = name
    @guestcount = []
    @tracks = []
  end

end
