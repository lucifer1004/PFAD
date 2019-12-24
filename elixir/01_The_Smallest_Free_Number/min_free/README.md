# MinFree

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

### Sample benchmark result

| Name               | ips      | average  | deviation | median   | 99th %   |
| ------------------ | -------- | -------- | --------- | -------- | -------- |
| divide and conquer | 7.86 K   | 0.127 ms | ±35.89%   | 0.117 ms | 0.26 ms  |
| baseline           | 0.0773 K | 12.93 ms | ±6.45%    | 12.75 ms | 18.91 ms |

Comparison:

- divide and conquer 7.86 K
- baseline 0.0773 K - 101.60x slower +12.81 ms

The divide-and-conquer method is around 100x faster than the baseline method. It is amazing!
