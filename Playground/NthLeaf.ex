defmodule NthLeaf do

  @type tree() :: {:leaf, any()} | {:node, tree(), tree()}

  def nth(tree, n) do
    traverse(tree, n, 0)
  end

  @spec traverse(any()) :: tuple() | integer()
  def traverse({node, left, right}, n) do
    if(traverse(left, n)) do
      {:found, value}
    else
      traverse(right, n)
    end


  end

  def traverse({:leaf, value}, 1) do
    true
  end

  def traverse({:leaf, value}, n) do
    n+1
  end






end
