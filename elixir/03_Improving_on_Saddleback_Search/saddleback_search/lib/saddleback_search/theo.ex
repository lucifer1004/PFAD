defmodule SaddlebackSearch.Theo do
  @moduledoc """
  Documentation for `SaddlebackSearch.Theo`.
  """

  @doc """
  Solve `f(x,y) = z`, where `f` is strictly increasing in each argument.

  ## Examples

      iex> SaddlebackSearch.Theo.invert(&(&1 + &2), 5)
      [{0, 5}, {1, 4}, {2, 3}, {3, 2}, {4, 1}, {5, 0}]

      iex> SaddlebackSearch.Theo.invert(&(&1 + 2 * &2), 8)
      [{0, 4}, {2, 3}, {4, 2}, {6, 1}, {8, 0}]

      iex> SaddlebackSearch.Theo.invert(&(&1 * &2 + 1), 13)
      [{1, 12}, {2, 6}, {3, 4}, {4, 3}, {6, 2}, {12, 1}]

      iex> SaddlebackSearch.Theo.invert(&(trunc(:math.pow(2, &1)) + trunc(:math.pow(3, &2))), 13)
      [{2, 2}]

  """
  @spec invert((integer, integer -> integer), integer) :: [{integer, integer}]
  def invert(f, z) do
    m = bsearch(&f.(0, &1), {-1, z + 1}, z)
    n = bsearch(&f.(&1, 0), {-1, z + 1}, z)

    find({0, m}, f, n, z)
  end

  @spec bsearch((integer -> integer), {integer, integer}, integer) :: integer
  defp bsearch(_, {a, b}, _) when a + 1 == b do
    a
  end

  @spec bsearch((integer -> integer), {integer, integer}, integer) :: integer
  defp bsearch(g, {a, b}, z) do
    m = div(a + b, 2)
    if g.(m) <= z, do: bsearch(g, {m, b}, z), else: bsearch(g, {a, m}, z)
  end

  @spec find({integer, integer}, (integer, integer -> integer), integer, integer) :: [
          {integer, integer}
        ]
  defp find({u, v}, _, n, _) when u > n or v < 0 do
    []
  end

  @spec find({integer, integer}, (integer, integer -> integer), integer, integer) :: [
          {integer, integer}
        ]
  defp find({u, v}, f, n, z) do
    z1 = f.(u, v)

    cond do
      z1 < z -> find({u + 1, v}, f, n, z)
      z1 == z -> [{u, v} | find({u + 1, v - 1}, f, n, z)]
      z1 > z -> find({u, v - 1}, f, n, z)
    end
  end
end
