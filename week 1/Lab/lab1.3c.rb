class Item 
    attr_accessor :name
    attr_accessor :done

    def initialize(name, done = false)
       @name = name
       @done = done
       def  done?
           !!@done

    def display
        if done?
            "- [x] #{name}"
        else 
            "- [ ] #{name}"
        end
    end
end
require "minitest\autorun"


class TestItem < Minitest::Test

  def setup
      @item = Item.new{"learn hash"}
  end

  def test_done_when_refault
     assert_equal @item.done?, false
  end

  def test_done_after_set
      @item.done = true
      assert_equal @item.done?, true
  end       
  
  def test_display
  assert_equal @test.display, "- [ ] learn test"
  end
end