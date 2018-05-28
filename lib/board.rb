require 'pry'
require './lib/tile'

class Board

  def tile_value_array_maker
    tile_names = ["A1", "A2", "A3", "A4", "B1", "B2", "B3", "B4", "C1", "C2", "C3", "C4", "D1", "D2", "D3", "D4"]
    @tile_value_array = []

    tile_names.map do |each|
      each = Tile.new.tile_valuation
      @tile_value_array << each
    end
  @tile_value_array
  end
  board = Board.new
  p board.tile_value_array_maker

  def board_maker
    board = Board.new
    board.tile_value_array_maker
    p "==============="
    p " .  1  2  3  4 "
    p " A  #{@tile_value_array[0]}   #{@tile_value_array[1]}   #{@tile_value_array[2]}   #{@tile_value_array[3]}"
    p " B   #{@tile_value_array[4]}   #{@tile_value_array[5]}   #{@tile_value_array[6]}   #{@tile_value_array[7]}"
    p " C   #{@tile_value_array[8]}   #{@tile_value_array[9]}   #{@tile_value_array[10]}   #{@tile_value_array[11]}"
    p " D   #{@tile_value_array[12]}   #{@tile_value_array[13]}   #{@tile_value_array[14]}   #{@tile_value_array[15]}"
    p "==============="
  end
board = Board.new
board.tile_value_array_maker
board.board_maker
end
