defmodule SurpasserCount.Baseline do
  @moduledoc """
  Documentation for `SurpasserCount.Baseline`.
  """

  @doc """
  Calculate the maximum surpasser count for a given array `x`, where the surpasser count for each element `x[i]` is the number of elements `x[j]` that satisfy `i < j` and `x[i] < x[j]`.

  `SurpasserCount.Baseline.msc/1` uses a naive quadratic algorithm.

  ## Examples

      iex> SurpasserCount.Baseline.msc([1, 2, 3, 4])
      3

      iex> SurpasserCount.Baseline.msc([5, 4, 3, 1, 2])
      1

  """
  @spec msc([]) :: integer
  def msc([]) do
    0
  end

  @spec msc([integer]) :: integer
  def msc([z | zs]) do
    max(scount(z, zs), msc(zs))
  end

  @spec scount(integer, [integer]) :: integer
  defp scount(x, xs) do
    xs |> Enum.filter(&(x < &1)) |> length
  end
end
