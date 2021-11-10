:random.seed(:erlang.now())

Benchee.run(
  %{
    "Jack's brute force" => fn {f, z} -> SaddlebackSearch.Jack.invert(f, z) end,
    "Anne's saddleback search" => fn {f, z} -> SaddlebackSearch.Anne.invert(f, z) end,
    "Theo's binary search" => fn {f, z} -> SaddlebackSearch.Theo.invert(f, z) end,
    "Mary's row/column binary search" => fn {f, z} -> SaddlebackSearch.Mary.invert(f, z) end
  },
  inputs: [
    {"F0", {&(trunc(:math.pow(2, &2)) * (2 * &1 + 1) - 1), 500}},
    {"F1", {&(&1 * trunc(:math.pow(2, &1)) + &2 * trunc(:math.pow(2, &2)) + 2 * &1 + &2), 500}},
    {"F2", {&(3 * &1 + 27 * &2 + &2 * &2), 500}},
    {"F3", {&(&1 * &1 + &2 * &2 + &1 + &2), 500}},
    {"F4", {&(&1 + trunc(:math.pow(2, &2)) + &2 - 1), 500}}
  ],
  formatters: [
    Benchee.Formatters.Console,
    {Benchee.Formatters.Markdown,
     file: "Benchmarks.md",
     description: """
     This benchmark compares 4 different implementations of `invert(f, z)` on 5 different `f`s.
     """}
  ]
)
