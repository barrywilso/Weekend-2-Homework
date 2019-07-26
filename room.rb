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

  def songs_total
    return @album.count
  end

  def add_song(song)
    @album << song
  end

end
