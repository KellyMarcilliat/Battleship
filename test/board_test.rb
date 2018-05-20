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

end
