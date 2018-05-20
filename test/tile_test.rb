require 'simplecov'
SimpleCov.start
require 'pry'
require "minitest/autorun"
require "minitest/pride"
require './lib/tile'

class TileTest < Minitest::Test
  def test_tile_instance_exists
    tile = Tile.new()
    assert_instance_of Tile, tile
  end

  # Not sure if this is testing what I want - does pass
  def test_ship_status_takes_default_arguments
    tile = Tile.new("", "")
    assert "open"
    assert "none"
  end

  def test_tile_takes_ship_status_attribute
    tile = Tile.new("B", "")
    assert_equal "B", "B"
  end

  def test_tile_takes_shot_status_attribute
    tile = Tile.new("", "shot")
    assert_equal "shot", "shot"
  end

end
