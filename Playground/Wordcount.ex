defmodule W do
  def main do
    phrase = IO.gets("Write your phrase here: ")
    phrase_list = String.split(String.trim(phrase), " ")
    count([], phrase_list)
  end


  def count([], [head | tail]) do
    check(head, tail, 1)
    count(head, tail)
  end
  def count(previous, [head | tail]) do
    newprev = [head | previous]
    if (norepeat(previous, head)) do
      count(newprev, tail)
    else
      check(head, tail, 1)
      count(newprev, tail)
    end
  end
  def count(newprev, []) do
    IO.puts("End of sentence.")
  end


  def norepeat([head | tail], string) do
    if head == string do
      true
    else
      norepeat(tail, string)
    end
  end
  def norepeat(previous, string) do
    if previous == string do
      true
    else
      false
    end
  end


  def check(word, [focus | rest], counter) do

    if word == focus do
      counter2 = counter + 1
      check(word, rest, counter2)
    else
      check(word, rest, counter)
    end
  end
  def check(string, [], counter) do
    IO.puts("#{string} : #{counter}")
  end

end
