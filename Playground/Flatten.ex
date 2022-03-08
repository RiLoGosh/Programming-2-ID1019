defmodule Flat do

  def flat do
    list = [[1, [[2], 3], 4], 5]
    start(list)
  end
  def start(list) do


    flatten(list, [])
  end

  def flatten([head | tail], []) do
    finallist = flatten(head)
    flatten(tail, finallist)
  end

  def flatten([head | tail], newlist) do
    finallist = newlist ++ head
    IO.inspect(newlist)
    IO.inspect([head | tail])
    if(is_list(head)) do
      final = newlist ++ flatten(head)
      IO.inspect(final)
      flatten(tail, final)
    end

    flatten(tail, finallist)
  end

  def flatten([head | tail]) do
    IO.inspect([head | tail])
    if(is_list(head)) do
      IO.inspect(head)
      flatten(head)
      flatten(tail)
    end
  end

end
