defmodule RomanNumeralKata do
  @numerals [{50, "L"},
             {10, "X"},
             {9, "IX"},
             {5, "V"},
             {4, "IV"},
             {1, "I"}]

  def converts(number) do
    converts(number, @numerals)
  end

  def converts(number, numberals) when number < 1 do
    ""
  end

  def converts(number, [{arabic, roman} | tail]) when number >= arabic do
    roman <> converts(number - arabic, [{arabic, roman} | tail])
  end

  def converts(number, [head | tail]) do
    converts(number, tail)
  end
end
