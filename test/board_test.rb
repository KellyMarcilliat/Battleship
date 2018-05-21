require 'simplecov'
SimpleCov.start
require 'pry'
require "minitest/autorun"
require "minitest/pride"
require './lib/board'
require './lib/tile'

class BoardTest < Minitest::Test
  def test_board_instance_exists
    board = Board.new
    assert_instance_of Board, board
  end

  def test_board_creates_array_with_16_tile_values
    board = Board.new()
    assert_equal 16, board.tile_value_array_maker.count
  end

  def test_value_array_maker_elements_are_strings
    board = Board.new()
    assert_equal String, board.tile_value_array_maker[0].class
    assert_equal String, board.tile_value_array_maker[15].class
  end
end
