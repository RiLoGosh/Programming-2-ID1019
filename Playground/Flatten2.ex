defmodule F do

  def main do
    list = [[1, [[2], 3], 4], 5]
    IO.inspect(flatten(list))
  end

  def flatten([head | tail]) do
    flatten(head) ++ flatten(tail)
  end

  def flatten(value) do
    [value]
  end

  def flatten([]) do
    IO.puts "End of recursion"
  end
end
