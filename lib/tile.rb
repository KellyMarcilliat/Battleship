require 'pry'

class Tile
  attr_reader :ship_status
              :shot_status

  def initialize(ship_status = ("open"), shot_status = ("none"))
    @ship_status = ship_status
    @shot_status = shot_status
  end

  def tile_valuation
    if @ship_status == "open" && @shot_status == "none"
      tile_value = " "
    end

    if @ship_status == "open" && @shot_status == "present"
      tile_value = "M"
    end

    if @ship_status == "B" && @shot_status == "none"
      tile_value = "B"
    end

    if @ship_status == "B" && @shot_status == "present"
      tile_value = "H"
    end

    if @ship_status == "D" && @shot_status == "none"
      tile_value = "D"
    end

    if @ship_status == "D" && @shot_status == "present"
      tile_value = "H"
    end

    tile_value

  end

end
