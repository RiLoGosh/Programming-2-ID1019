defmodule T do

  def toggle(list) do
    i = 0
    IO.puts(switch(list, i))
  end

  def switch([head | tail], i) do
    newi = i + 1
    if (i == 0) do
      newlist = [List.first(tail), head]
      switch(newlist, newi)
    else
      if (rem(i, 2) == 0) do
        newlist = [List.first(tail), head]
        switch(newlist, newi)
      else
      switch(tail, newi)
      end
    end
  end

  def switch([], i) do
    IO.puts "List is toggled"
  end


end
