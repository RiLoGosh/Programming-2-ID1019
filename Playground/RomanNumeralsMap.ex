defmodule R do


  def main(number) do
    number2 = String.trim(number)
    numberlist = String.graphemes(number2)
    listlength = length(numberlist)
    convert(numberlist, listlength)
  end

  def convert([head | tail], length) do
    convertdigit(head, length)
    newfocus = length - 1
    convert(tail, newfocus)
  end

  def convert([], length) do
    IO.puts " "
  end

  def convertdigit(string, 1) do
    rome = %{"1" => "I", "2" => "II", "3" => "III", "4" => "IV", "5" => "V", "6" => "VI", "7" => "VII", "8" => "VIII", "9" => "IX"}
    IO.write "#{rome[string]}"
  end

  def convertdigit(string, 2) do
    rome = %{"1" => "X", "2" => "XX", "3" => "XXX", "4" => "XL", "5" => "L", "6" => "LX", "7" => "LXX", "8" => "LXXX", "9" => "XC"}
    IO.write "#{rome[string]}"

  end

  def convertdigit(string, 3) do
    rome = %{"1" => "C", "2" => "CC", "3" => "CCC", "4" => "CD", "5" => "D", "6" => "DC", "7" => "DCC", "8" => "DCCC", "9" => "CM"}
    IO.write "#{rome[string]}"

  end

  def convertdigit(string, 4) do
    rome = %{"1" => "M", "2" => "MM", "3" => "MMM", "4" => "IV", "5" => "V", "6" => "VI", "7" => "VII", "8" => "VIII", "9" => "IX"}
    IO.write "#{rome[string]}"

  end
end
