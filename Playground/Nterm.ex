defmodule Nth do

  def drop(list, n) do
   drop(list, n, n)
  end


  def drop([head | tail], n, 1) do
    drop(tail, n, n)
  end


  def drop([head | tail], n, k) do
    [head | drop(tail, n, k-1)]

  end

  def drop([], _, _) do

  end
end
