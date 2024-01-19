require 'minitest/autorun'
require './prisoner'

class TestCLI < Minitest::Test
  def test_prisoner
    prisoner = Prisoner.new("gary", "being mean to spongebob")
    assert_equal "gary committed crime of being mean to spongebob", prisoner.to_s, "Prisoner output incorrect"
  end
end
