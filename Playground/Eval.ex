defmodule Eval do

  @spec expr() :: integer() |
  {:add, expr(), expr()} |
  {:mul, expr(), expr()} |
  {:neg, expr()}


  def eval(:add, x, y) do
    eval(x) + eval(y)
  end

  def eval(:mul, x, y) do
    eval(x) * eval(y)
  end

  def eval(:neg, x) do
    - eval(x)
  end

  def eval(integer) do
    integer
  end
end
