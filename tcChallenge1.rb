require "minitest/autorun"
require "./challenge1"

class TestChallenge1 < Minitest::Test

  def test_simple
    assert_equal "4 4 27 0 1 1 ",main("2
4 5
UPDATE 2 2 2 4
QUERY 1 1 1 3 3 3
UPDATE 1 1 1 23
QUERY 2 2 2 4 4 4
QUERY 1 1 1 3 3 3
2 4
UPDATE 2 2 2 1
QUERY 1 1 1 1 1 1
QUERY 1 1 1 2 2 2
QUERY 2 2 2 2 2 2")
  end
end
