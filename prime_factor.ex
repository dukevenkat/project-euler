defmodule PrimeFactor do
  def main(_number) do
    get_next_prime() |> IO.inspect(limit: :infinity)
  end

  defp get_next_prime() do
    {:ok, file_content} = File.read("primes-to-100k.txt")

    file_content
    |> String.trim()
    |> String.split("\n")
    |> Enum.map(&(&1 |> String.replace("\r", "") |> String.to_integer()))
  end
end
