require 'test/unit'

class Person; end

class TestCheckedAttributes < Test::Unit::TestCase
  def setup
    add_checked_attribute(Person, :age)
    @bob = Person.new
  end

  def test_accepts_valid_values
    @bob.age = 20
    assert_equal 20, @bob.age
  end

  def test_refuses_nil_values
    assert_raises RuntimeError, 'Invalid attribute' do
      @bob.age = nil
    end
  end

  def test_refuses_false_values
    assert_raises RuntimeError, 'Invalid attribute' do
      @bob.age = false
    end
  end
end

def add_checked_attribute(klass, attribute)
  eval "
    class #{klass}
      def #{attribute}=(value)
        raise 'Invalid attribute' unless value
        @#{attribute} = value
      end

      def #{attribute}()
        @#{attribute}
      end
    end
  "
end

# add_checked_attribute(String, :my_attr) を呼び出すと以下のように評価される
# class String
#   def my_attr=(value)
#     raise 'Invalid attribute' unless value
#     @my_attr = value
#   end
#
#   def my_attr()
#     @my_attr
#   end
# end
# これにより、String クラスに my_attr という属性を追加することができる
