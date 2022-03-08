defmodule Dec do

  def decode([{item, amount} | rest ]) do
    decode(item, amount) ++ decode(rest)
  end

  def decode(item, amount) do
    [item] ++ decode(item, amount - 1)
  end

  def decode(item, 1) do
    [item]
  end

end
