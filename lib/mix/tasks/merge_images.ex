defmodule Mix.Tasks.MergeImages do
  #To use mix task behavior in here, something like rake
  use Mix.Task

  @shortdoc "Merges images into one"
  def run(_) do
    Medusa.merge_images |> IO.inspect
  end

end

