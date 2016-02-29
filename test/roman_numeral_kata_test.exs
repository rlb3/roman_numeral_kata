defmodule RomanNumeralKataTest do
  use ExUnit.Case
  doctest RomanNumeralKata

  test "converts arabic into roman numerals" do
    test_values = [{0, ""},
                   {1, "I"},
                   {2, "II"},
                   {3, "III"},
                   {4, "IV"},
                   {5, "V"},
                   {6, "VI"},
                   {7, "VII"},
                   {8, "VIII"},
                   {9, "IX"},
                   {10, "X"},
                   {15, "XV"},
                   {20, "XX"},
                   {24, "XXIV"}]

    Enum.each test_values, fn({arabic, roman}) -> assert RomanNumeralKata.converts(arabic) == roman end
  end
end
