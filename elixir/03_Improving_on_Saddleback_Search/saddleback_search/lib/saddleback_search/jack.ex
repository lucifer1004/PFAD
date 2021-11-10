defmodule SaddlebackSearch.Jack do
  @moduledoc """
  Documentation for `SaddlebackSearch.Jack`.
  """

  @doc """
  Solve `f(x,y) = z`, where `f` is strictly increasing in each argument.

  ## Examples

      iex> SaddlebackSearch.Jack.invert(&(&1 + &2), 5)
      [{0, 5}, {1, 4}, {2, 3}, {3, 2}, {4, 1}, {5, 0}]

      iex> SaddlebackSearch.Jack.invert(&(&1 + 2 * &2), 8)
      [{0, 4}, {2, 3}, {4, 2}, {6, 1}, {8, 0}]

      iex> SaddlebackSearch.Jack.invert(&(&1 * &2 + 1), 13)
      [{1, 12}, {2, 6}, {3, 4}, {4, 3}, {6, 2}, {12, 1}]

      iex> SaddlebackSearch.Jack.invert(&(trunc(:math.pow(2, &1)) + trunc(:math.pow(3, &2))), 13)
      [{2, 2}]

  """
  @spec invert((integer, integer -> integer), integer) :: [{integer, integer}]
  def invert(f, z) do
    for x <- 0..z, y <- 0..(z - x), f.(x, y) == z, do: {x, y}
  end
end
