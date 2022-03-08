defmodule Huff do

  @type tree() :: {:leaf, integer()} | {integer(), tree(), tree()}


  def test do
    sample = sample()
    tree = tree(sample)
    encode = encode_table(tree)
    decode = decode_table(tree)
    text = text()
    seq = encode(text, encode)
    decode(seq, decode)
  end

  def sample do
    'the quick brown fox jumps over the lazy dog
    this is a sample text that we will use when we build
    up a table we will only handle lower case letters and
    no punctuation symbols the frequency will of course not
    represent english but it is probably not that far off'
  end

  def text() do
    'this is something that we should encode'
  end

  def tree(sample) do
    freq = freq(sample)
    #huff(freq)
  end

  def encode_table(tree) do

  end

  def decode_table(tree) do

  end

  def encode(text, table) do

  end

  def decode(seq, tree) do

  end

  def freq(sample) do
    newsample = String.graphemes(String.trim(sample))
    IO.inspect(newsample)
    heap = Map.new()
    freq(newsample, heap)

    tuplelist = Enum.into(list, heap)
  end

  def freq([], heap) do
    heap
  end

  def freq([char | rest], heap) do

    if(Map.has_key?(heap, char) == true) do
      heap = Map.update!(heap, char, fn(value) -> value + 1 end)
      freq(rest, heap)
    else
      heap = Map.put_new(heap, char, 1)
      freq(rest, heap)
    end

  end







end
