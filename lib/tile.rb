require 'pry'

class Tile
  attr_reader :ship_status
              :shot_status

  def initialize(ship_status = ("open"), shot_status = ("none"))
    @ship_status = ship_status
    @shot_status = shot_status
  end

end
