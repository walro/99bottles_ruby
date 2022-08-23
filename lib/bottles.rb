class Bottles
  def verse(bottles)
    first_sentence(bottles) + second_sentence(bottles)
  end

  def verses(start_verse, end_verse)
    start_verse.downto(end_verse).map do |verse|
      result = verse(verse)
      result += "\n" unless verse == end_verse

      result
    end.join
  end

  def song
    verses(99, 0)
  end

  private

  def first_sentence(bottles)
    if bottles.zero?
      "No more bottles of beer on the wall, " +
      "no more bottles of beer.\n"
    else
      "#{bottles} #{bottle_pluralization(bottles)} of beer on the wall, " +
      "#{bottles} #{bottle_pluralization(bottles)} of beer.\n"
    end
  end

  def second_sentence(bottles)
    if bottles.zero?
       "Go to the store and buy some more, " +
      "99 bottles of beer on the wall.\n"
    elsif bottles > 1
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
