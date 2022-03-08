defmodule DNATrans do
  @dnatransform %{ ?G => ?C, ?C => ?G, ?T => ?A, ?A => ?U}

  @spec transcribe([char]) :: [char]
  def transcribe (dna) do
    Enum.map(dna, fn(n) -> @dnatransform[n] end)
  end



end
