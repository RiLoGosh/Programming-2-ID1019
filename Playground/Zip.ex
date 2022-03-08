defmodule Zip do

  @spec zip(list(), list()) :: list()
  def zip([head1 | tail1], [head2 | tail2]) do
    [{head1, head2}] ++ zip(tail1, tail2)
  end

  def zip([], []) do
    []
  end


end
