defmodule SurpasserCount do
  @moduledoc """
  Documentation for `SurpasserCount`.
  """

  @doc """
  Calculate the maximum surpasser count for a given array `x`, where the surpasser count for each element `x[i]` is the number of elements `x[j]` that satisfy `i < j` and `x[i] < x[j]`.

  `SurpasserCount.msc/1` uses a divide-and-conquer algorithm.

  ## Examples

      iex> SurpasserCount.msc([1, 2, 3, 4])
      3

      iex> SurpasserCount.msc([5, 4, 3, 1, 2])
      1

  """
  @spec msc([]) :: integer
  def msc([]) do
    0
  end

  @spec msc([integer]) :: integer
  def msc(xs) do
    table(xs) |> Enum.map(&elem(&1, 1)) |> Enum.max()
  end

  @spec table([integer]) :: [{integer, integer}]
  defp table([x]) do
    [{x, 0}]
  end

  @spec table([integer]) :: [{integer, integer}]
  defp table(xs) do
    m = length(xs)
    n = div(m, 2)
    {ys, zs} = xs |> Enum.split(n)
    join(m - n, table(ys), table(zs))
  end

  @spec join(integer, [{integer, integer}], []) :: [{integer, integer}]
  defp join(0, txs, []) do
    txs
  end

  @spec join(integer, [], [{integer, integer}]) :: [{integer, integer}]
  defp join(_, [], tys) do
    tys
  end

  @spec join(integer, [{integer, integer}], [{integer, integer}]) :: [{integer, integer}]
  defp join(n, [{x, c} | txs], [{y, d} | tys]) do
    if x < y,
      do: [{x, c + n} | join(n, txs, [{y, d} | tys])],
      else: [{y, d} | join(n - 1, [{x, c} | txs], tys)]
  end
end
