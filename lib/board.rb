require 'pry'
require './lib/tile'

class Board

  def tile_value_array_maker
    tile_names = ["A1", "A2", "A3", "A4", "B1", "B2", "B3", "B4", "C1", "C2", "C3", "C4", "D1", "D2", "D3", "D4"]
    tile_value_array = []

    tile_names.map do |each|
      each = Tile.new.tile_valuation
      tile_value_array << each
    end

  p tile_value_array
  end

end
