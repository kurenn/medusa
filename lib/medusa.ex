defmodule Medusa do
  import ImageBase64Handler

  def merge_images(image_paths) do
    convert(image_paths)
    File.read! "/images/base64Output"
  end

  defp transform_to_base64 do
    imagetobase64("/images/output.jpg", "/images/base64Output")
  end

  defp convert(image_paths) do
    System.cmd "convert", Enum.concat(image_paths, conversion_arguments()), stderr_to_stdout: true
    transform_to_base64()
  end

  defp conversion_arguments do
    ["-gravity", "center", "-composite", "/images/output.jpg"]
  end

end
