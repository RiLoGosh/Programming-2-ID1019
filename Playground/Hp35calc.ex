defmodule HP do

  @type op() :: :add | :sub
  @type instr() :: integer() | op()
  @type seq() :: [instr()]

  @spec hp35(seq()) :: integer()

  def main do
    hp35([3, 4, :add, 2, :sub])
  end

  def hp35([], stack) do
    []
  end
  def hp35(head | tail) do
    numberstack = [head]
    hp35(tail, numberstack)
  end

  def hp35([:add | sequence, [a, b | stack]]) do
    hp35(sequence, (a + b) | stack)
  end

  def hp35([:sub | sequence], [a, b | stack]) do
    hp35(sequence, [a - b | ])
  end

  def hp35([value | sequence], stack) do
    hp35(sequence, [value | stack])
  end



end
