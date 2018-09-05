require 'minitest/unit'
require 'minitest/autorun'

require_relative 'ruby'

class TestRuby < MiniTest::Unit::TestCase
  def setup
    @databuilder = DataBuilder.new
  end

  def test_init_ary
    assert_equal 10, @databuilder.init_ary(10).size
  end

  def test_add_num
    assert_equal 1, @databuilder.add_num
  end
end
