defmodule H do

  def index(list) do
    initial = 0
    index(list, initial)
  end

  def index([head | tail], i) do
    cond do
      head > i -> index(tail, i+1)
      head <= i -> IO.puts "The h-index is: #{i}"
    end
  end
end
