class Bottles
  def verse(amount)
    current_amount = amount - 1

    if amount == 0
      return "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
    end

    if amount == 1
      bottle = "bottle"
    else
      bottle = "bottles"
    end

    if current_amount == 1
      current_bottle = "#{current_amount} bottle"
      take = "one"
    elsif current_amount == 0
      current_bottle = "no more bottles"
      take = "it"
    else
      current_bottle = "#{current_amount} bottles"
      take = "one"
    end

    verse = "#{amount} #{bottle} of beer on the wall, #{amount} #{bottle} of beer.\nTake #{take} down and pass it around, #{current_bottle} of beer on the wall.\n"
    return verse
  end

  def verses(amount_1, amount_2)
    start = amount_1
    result = ""

    while start >= amount_2 do
      if start == amount_1
        result = verse(start)
      else
        result = result + "\n" + verse(start)
      end
      start = start - 1
    end

    return result
  end

  def song()
    return verses(99, 0)
  end
end
