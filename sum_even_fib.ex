defmodule SumEvenFib do
  @fib_limit 40_00_000
  def main() do
    get_fib()
  end

  defp get_fib(fibonacci \\ [1, 2], sum_of \\ 2)

  defp get_fib(fibonacci, sum_of) do
    reversed_fibo = fibonacci |> Enum.reverse()
    [last_term | rem_reversed_fibo] = reversed_fibo
    [last_secong_term | _sec_rem_reversed_fibo] = rem_reversed_fibo
    nex_term = last_term + last_secong_term

    sum_of = if rem(nex_term, 2) == 0, do: sum_of + nex_term, else: sum_of

    if nex_term < @fib_limit do
      reversed_fibo = [nex_term | reversed_fibo]
      get_fib(Enum.reverse(reversed_fibo), sum_of)
    else
      sum_of
    end
  end
end
