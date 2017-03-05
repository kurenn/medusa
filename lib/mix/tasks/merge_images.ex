defmodule Mix.Tasks.MergeImages do
  #To use mix task behavior in here, something like rake
  use Mix.Task

  @shortdoc "Merges images into one"
  def run(_) do
    Medusa.merge_images(["/images/599302.jpg", "/images/12688205_759693460831697_1898124915733146135_n.jpg"]) |> IO.puts
  end

end

