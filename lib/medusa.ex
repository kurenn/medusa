defmodule Medusa do
  def merge_images(image_paths) do
    #["image.jpg", "image.jpg"]
    convert(image_paths)
  end

  def convert(image_paths) do
    System.cmd "convert", Enum.concat(image_paths, conversion_arguments()), stderr_to_stdout: true
  end

  defp conversion_arguments do
    ["-gravity", "center", "-composite", "/images/output.jpg"]
  end

end
