defmodule M do
  def main do
    azeroth = %{"Durotar" => "Razor Hill", "Barrens" => "Crossroads", "Mulgore" => "Bloodhoof Village"}

    IO.puts "The capital of Durotar is #{azeroth["Durotar"]}"
  end
end
