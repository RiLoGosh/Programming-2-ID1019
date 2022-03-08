defmodule MyBst do

  @type bst_node :: %{data: any, left: bst_node | nil, right: bst_node | nil}
  defstruct (:data, :left, :right)


  @spec new(any) :: bst_node
  def new(data) do
    %MyBST{data: data}
  end


  @spec insert(bst_node, any) :: bst_node
  def insert(nil, value) do
    new(value)
  end

  def insert(%{data: value, left: nil, right: nil}) do
    [value]
  end

  def insert(tree, value) do
    if(tree.data < value) do
      %{tree | right: insert(tree.right, value)}
    else
      %{tree | left: insert(tree.left, value)}
    end
  end


  @spec in_order(bst_node) :: [any]
  def in_order(nil) do
    []
  end

  def (%{data: data, left: nil, right: nil}) do
    [data]
  end

  def in_order(tree) do
    in_order(tree.left) ++ [tree.data] ++ in_order(tree.right)
  end
end


