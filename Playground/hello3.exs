defmodule Hello3 do



  def hello(name \\ "Stranger", language_code \\ "en") do
    phrase(language_code) <> name
  end
  defp phrase("es"), do: "Hola, "
  defp phrase("en"), do: "Hello, "
  defp phrase(_unknownlanguage) do
    "Greetings, "
  end






end

Hello3.hello
