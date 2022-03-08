defmodule BST do

  def main do
    mytree = new(5)
    mytree = insert(mytree, 4)
    mytree = insert(mytree, 1)
    mytree = insert(mytree, 2)
    mytree = insert(mytree, 3)
    mytree = insert(mytree, 6)
    mytree = insert(mytree, 7)
    mytree = insert(mytree, 4)
    in_order(mytree)

  end

  @type bst_node :: %{data: any, left: bst_node | nil, right: bst_node | nil}
  defstruct [:data, :left, :right]

  @spec new(any) :: bst_node
  def new(data) do
    %BST{data: data}
  end

  @spec insert(bst_node, any) :: bst_node
  def insert(nil, data) do
    new(data)
  end

  def insert(tree, data) do
    if (data > tree.data) do
      %{tree | right: insert(tree.right, data)}
    else
      %{tree | left: insert(tree.left, data)}
    end
  end

  @spec in_order(bst_node) :: [any]
  def in_order(nil) do
    []
  end

  def in_order(%{data: d, left: nil, right: nil}) do
    [d]
  end

  def in_order(tree) do
    in_order(tree.left) ++ [tree.data] ++ in_order(tree.right)
  end



end
