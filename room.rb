class Room

  attr_reader :number, :maxguests, :occupants, :album

  def initialize(number, maxguests)
    @number = number
    @occupants = []
    @album = []
    @maxguests = maxguests
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

  def is_room_full(guests)
    if guests >= @room1.maxguests
      return true
    else
      return false
    end
  end

end
