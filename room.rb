class Room

  attr_reader :number, :occupants, :album

  def initialize(number)
    @number = number
    @occupants = []
    @album = []
  end

  def guests_total
    return @occupants.count
  end

  def add_guest(guest)
    @occupants << guest
  end

  def remove_guest(guest)
    @occupants.delete(guest)
  end

end
