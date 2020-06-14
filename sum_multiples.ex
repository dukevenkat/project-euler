defmodule SumMultiples do
  def main(n) do
    1..(n - 1)
    |> Enum.reduce(0, fn n, sum ->
      sum =
        if rem(n, 3) == 0 or rem(n, 5) == 0 do
          sum + n
        else
          sum
        end

      sum
    end)
  end
end
