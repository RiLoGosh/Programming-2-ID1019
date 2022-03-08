defmodule RnaTranscription do

  def main do
    dna = IO.gets("Please share your DNA Code: ")
    dna2 = String.trim(dna)
    transform(dna2)

  end

  def transform(dna) do
    IO.write(to_rna(String.first(dna)))
    newdna = String.slice(dna, 1, (String.length(dna)))
    transform(newdna)
  end

  def to_rna("A"), do: "U"
  def to_rna("G"), do: "C"
  def to_rna("C"), do: "G"
  def to_rna("T"), do: "A"
  def to_rna([]) do
    "End of Sequence."
  end


  def transform([]) do
    "End of Sequence."
  end
end

