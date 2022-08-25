class Bottles
  def verse(bottles)
    if bottles.zero?
      "No more bottles of beer on the wall, " +
      "no more bottles of beer.\n" +
      "Go to the store and buy some more, " +
      "99 bottles of beer on the wall.\n"
    elsif bottles == 1
      "1 bottle of beer on the wall, " +
      "1 bottle of beer.\n" +
      "Take it down and pass it around, no more bottles of beer on the wall.\n"
    else bottles > 1
      "#{bottles} bottles of beer on the wall, " +
      "#{bottles} bottles of beer.\n" +
      "Take one down and pass it around, #{bottles - 1} " +
      "#{bottle_pluralization(bottles -1)} of beer on the wall.\n"
    end
  end

  def verses(start_verse, end_verse)
    start_verse.downto(end_verse).map do |verse|
      verse(verse)
    end.join("\n")
  end

  def song
    verses(99, 0)
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
