defmodule SaddlebackSearch.Mary do
  @moduledoc """
  Documentation for `SaddlebackSearch.Mary`.
  """

  @doc """
  Solve `f(x,y) = z`, where `f` is strictly increasing in each argument.

  ## Examples

      iex> SaddlebackSearch.Mary.invert(&(&1 + &2), 5) |> Enum.sort()
      [{0, 5}, {1, 4}, {2, 3}, {3, 2}, {4, 1}, {5, 0}]

      iex> SaddlebackSearch.Mary.invert(&(&1 + 2 * &2), 8) |> Enum.sort()
      [{0, 4}, {2, 3}, {4, 2}, {6, 1}, {8, 0}]

      iex> SaddlebackSearch.Mary.invert(&(&1 * &2 + 1), 13) |> Enum.sort()
      [{1, 12}, {2, 6}, {3, 4}, {4, 3}, {6, 2}, {12, 1}]

      iex> SaddlebackSearch.Mary.invert(&(trunc(:math.pow(2, &1)) + trunc(:math.pow(3, &2))), 13) |> Enum.sort()
      [{2, 2}]

  """
  @spec invert((integer, integer -> integer), integer) :: [{integer, integer}]
  def invert(f, z) do
    m = bsearch(&f.(0, &1), {-1, z + 1}, z)
    n = bsearch(&f.(&1, 0), {-1, z + 1}, z)

    find({0, m}, {n, 0}, f, z)
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

  @spec find(
          {integer, integer},
          {integer, integer},
          (integer, integer -> integer),
          integer
        ) :: [
          {integer, integer}
        ]
  defp find({u, v}, {r, s}, _, _) when u > r or v < s do
    []
  end

  @spec find(
          {integer, integer},
          {integer, integer},
          (integer, integer -> integer),
          integer
        ) :: [
          {integer, integer}
        ]
  defp find({u, v}, {r, s}, f, z) do
    p = div(u + r, 2)
    q = div(v + s, 2)

    rfind = fn p ->
      if(f.(p, q) == z,
        do: [{p, q} | find({u, v}, {p - 1, q + 1}, f, z)],
        else: find({u, v}, {p, q + 1}, f, z)
      ) ++
        find({p + 1, q - 1}, {r, s}, f, z)
    end

    cfind = fn q ->
      find({u, v}, {p - 1, q + 1}, f, z) ++
        if f.(p, q) == z,
          do: [{p, q} | find({p + 1, q - 1}, {r, s}, f, z)],
          else: find({p + 1, q}, {r, s}, f, z)
    end

    if v - s <= r - u,
      do: rfind.(bsearch(&f.(&1, q), {u - 1, r + 1}, z)),
      else: cfind.(bsearch(&f.(p, &1), {s - 1, v + 1}, z))
  end
end
