class PerimetroRadio
   def initialize( num )
   raise unless num.is_a?(Numeric)
   @x = num
   end

   def radio()
   @x / (2 * 3.14159265)
   end
end

