class Bottles
  def verse(bottles)
    "#{bottles} #{bottle_pluralization(bottles)} of beer on the wall, " +
    "#{bottles} #{bottle_pluralization(bottles)} of beer.\n" +
    "Take one down and pass it around, " +
    "#{bottles - 1} #{bottle_pluralization(bottles - 1)} of beer on the wall.\n"
  end

  private

  def bottle_pluralization(bottles)
    if bottles > 1
      "bottles"
    else
      "bottle"
    end
  end
end
