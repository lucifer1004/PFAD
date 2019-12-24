defmodule MinFree do
  @moduledoc """
  Documentation for MinFree.
  """

  @doc """
  Get the minimal missing number from the given list of natural numbers.

  Duplicate elements are **not** allowed.

  ## Examples

      iex> MinFree.minfree([0,2,3,4])
      1

      iex> MinFree.minfree([0,1,2,3,4])
      5

  """
  def minfree(xs) when is_list(xs) do
    minfrom(0, length(xs), xs)
  end

  def minfree(_) do
    {:error, "MinFree can only be applied to lists of numbers."}
  end

  defp minfrom(start, n, xs) do
    stop = start + 1 + div(n, 2)
    {us, vs} = Enum.split_while(xs, fn x -> x < stop end)

    m = length(us)

    cond do
      n == 0 -> start
      m == stop - start -> minfrom(stop, n - m, vs)
      true -> minfrom(start, m, us)
    end
  end
end
