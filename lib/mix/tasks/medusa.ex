defmodule Mix.Tasks.Medusa do
  #To use mix task behavior in here, something like rake
  use Mix.Task
  use Anubis

  banner """
  This command utility will combine multiple images into one by stacking them using ImageMagick.

  Use it like:
  $ mix medusa <command> <args>
  """

  command :stack, "Stacks the images into one and returns the base64 representation", Medusa.merge_images

  parse
end

