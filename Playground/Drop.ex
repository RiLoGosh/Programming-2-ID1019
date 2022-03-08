defmodule Drop do

  def drop([]) do
    []
  end

  def drop ([list], (n>0)) do
    x = list.length / n
    removenth([list], n, x)
  end

  def removenth ([list], n, x) do
    delete_at(list, (n*x))
    removenth ([list], n, (x-1))
  end

  def removenth ([list], n, 0) do
    []
  end

end
