defmodule Pascal do


  def pasc(0) do
    []
  end

  def pasc(1) do
    [1]
  end

  def pasc(2) do
    [1, 1]
  end


  def pasc(n) do
    list = [1, 1]
    IO.inspect(pascaction(n-2, list))
  end

  def pascaction(0, list) do
    list
  end

  def pascaction(n, list) do

    nextlist = start(list)

    pascaction(n-1, nextlist)

  end

  def start([a | rest]) do
    [a] ++ write([ a | rest]) ++ [a]
  end

  def write([a, b | rest]) do
    [a + b] ++ write([ b | rest])
  end

  def write([a | []]) do
    []
  end
end
