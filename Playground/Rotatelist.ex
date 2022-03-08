defmodule Rot do

  def rotate(list, n) do
    if(length(list) >= n >= 0) do
      rot(list, n)
    end

  end

  def rot([head | tail], n) do
    rot(append(tail, head), n)
  end

  def rot(list, 0) do
    []
  end


end
