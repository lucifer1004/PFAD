# SurpasserCount

## Install dependencies

```bash
mix deps.get
```

## Run tests

```bash
mix test
```

## Generate documentation

```bash
mix docs
```

## Run benchmark

```bash
mix run bench.exs
```

### Sample benchmark result (N = 2000)

| Name               | ips      | average  | deviation | median   | 99th %   |
| ------------------ | -------- | -------- | --------- | -------- | -------- |
| divide and conquer | 1.16 K   |  0.86 ms | ±8.78%    |  0.84 ms |  1.20 ms |
| baseline           | 0.0245 K | 40.79 ms | ±4.80%    | 40.03 ms | 53.39 ms |

Comparison:

- divide and conquer 1.16 K
- baseline 0.0245 K - 47.39x slower +39.93 ms

The divide-and-conquer method is around 47x faster than the baseline method.
