defmodule SaddlebackSearch.Anne do
  @moduledoc """
  Documentation for `SaddlebackSearch.Anne`.
  """

  @doc """
  Solve `f(x,y) = z`, where `f` is strictly increasing in each argument.

  ## Examples

      iex> SaddlebackSearch.Anne.invert(&(&1 + &2), 5)
      [{0, 5}, {1, 4}, {2, 3}, {3, 2}, {4, 1}, {5, 0}]

      iex> SaddlebackSearch.Anne.invert(&(&1 + 2 * &2), 8)
      [{0, 4}, {2, 3}, {4, 2}, {6, 1}, {8, 0}]

      iex> SaddlebackSearch.Anne.invert(&(&1 * &2 + 1), 13)
      [{1, 12}, {2, 6}, {3, 4}, {4, 3}, {6, 2}, {12, 1}]

      iex> SaddlebackSearch.Anne.invert(&(trunc(:math.pow(2, &1)) + trunc(:math.pow(3, &2))), 13)
      [{2, 2}]

  """
  @spec invert((integer, integer -> integer), integer) :: [{integer, integer}]
  def invert(f, z) do
    find({0, z}, f, z)
  end

  @spec find({integer, integer}, (integer, integer -> integer), integer) :: [{integer, integer}]
  defp find({u, v}, _, z) when u > z or v < 0 do
    []
  end

  @spec find({integer, integer}, (integer, integer -> integer), integer) :: [{integer, integer}]
  defp find({u, v}, f, z) do
    z1 = f.(u, v)

    cond do
      z1 < z -> find({u + 1, v}, f, z)
      z1 == z -> [{u, v} | find({u + 1, v - 1}, f, z)]
      z1 > z -> find({u, v - 1}, f, z)
    end
  end
end
