defmodule Selection do
  @moduledoc """
  Documentation for `Selection`.
  """

  @doc """
  Select the k-th smallest element from two sorted lists, where k starts from 0.

  ## Examples

      iex> Selection.smallest(0, {[1, 2], [4]})
      1

      iex> Selection.smallest(3, {[1, 2], [4]})
      nil

  """
  @spec smallest(integer, {[integer], [integer]}) :: integer | nil
  def smallest(k, {xs, ys}) do
    union(xs, ys) |> Enum.at(k)
  end

  @spec union([integer], []) :: [integer]
  defp union(xs, []) do
    xs
  end

  @spec union([], [integer]) :: [integer]
  defp union([], ys) do
    ys
  end

  @spec union([integer], [integer]) :: [integer]
  defp union([x | xs], [y | ys]) do
    if x < y,
      do: [x | union(xs, [y | ys])],
      else: [y | union([x | xs], ys)]
  end
end
