class Bottles
  def verse(bottles)
    first_sentence(bottles) + second_sentence(bottles)
  end

  private

  def first_sentence(bottles)
    "#{bottles} #{bottle_pluralization(bottles)} of beer on the wall, " +
    "#{bottles} #{bottle_pluralization(bottles)} of beer.\n"
  end

  def second_sentence(bottles)
    if bottles > 1
      "Take one down and pass it around, #{bottles - 1} " +
      "#{bottle_pluralization(bottles -1 )} of beer on the wall.\n"
    else
      "Take it down and pass it around, no more bottles of beer on the wall.\n"
    end
  end

  def bottle_pluralization(bottles)
    if bottles > 1
      "bottles"
    else
      "bottle"
    end
  end
end
