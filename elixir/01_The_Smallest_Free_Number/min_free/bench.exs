defmodule MinFree.Baseline do
  def minfree(xs) do
    set = MapSet.new(xs)

    missing(set, 0)
  end

  defp missing(set, n) do
    if !MapSet.member?(set, n) do
      n
    else
      missing(set, n + 1)
    end
  end
end

:random.seed(:erlang.now())

Benchee.run(
  %{
    "divide and conquer" => fn list -> MinFree.minfree(list) end,
    "baseline" => fn list -> MinFree.Baseline.minfree(list) end
  },
  before_each: fn _ ->
    Enum.to_list(1..100_000)
    |> MapSet.new()
    |> MapSet.delete(:random.uniform(100_000) |> trunc())
    |> MapSet.to_list()
  end
)
