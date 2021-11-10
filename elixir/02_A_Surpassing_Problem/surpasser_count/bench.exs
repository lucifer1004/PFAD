:random.seed(:erlang.now())

Benchee.run(
  %{
    "divide and conquer" => fn list -> SurpasserCount.msc(list) end,
    "baseline" => fn list -> SurpasserCount.Baseline.msc(list) end
  },
  before_each: fn _ ->
    1..2_000
    |> Enum.map(fn _ -> :random.uniform(100_000) |> trunc() end)
  end
)
