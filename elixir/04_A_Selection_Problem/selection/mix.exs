defmodule Selection.MixProject do
  use Mix.Project

  def project do
    [
      app: :selection,
      version: "0.1.0",
      elixir: "~> 1.12",
      build_path: "../../pfad_umbrella/_build",
      config_path: "../../pfad_umbrella/config/config.exs",
      deps_path: "../../pfad_umbrella/deps",
      lockfile: "../../pfad_umbrella/mix.lock",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end
end
