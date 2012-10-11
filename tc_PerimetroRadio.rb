require "PerimetroRadio"
require "test/unit"
 
class TestPerimetroRadio < Test::Unit::TestCase
 
  def test_simple
     assert_equal(12 / (2 * 3.14159265), PerimetroRadio.new(12).radio() )
     assert_equal(48 / (2 * 3.14159265) , PerimetroRadio.new(48).radio() )
  end
  
  def test_typecheck
    assert_raise( RuntimeError, "Se ha introducido una letra" ) { PerimetroRadio.new('a') }
  end
  
  def test_failure
     assert_equal(-30 / (2 * 3.14159265) , PerimetroRadio.new(-30).radio(), "Se ha introducido un numero negativo" )
  end
end
