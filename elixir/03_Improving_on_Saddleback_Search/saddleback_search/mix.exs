defmodule SaddlebackSearch.MixProject do
  use Mix.Project

  def project do
    [
      app: :saddleback_search,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      build_path: "../../pfad_umbrella/_build",
      config_path: "../../pfad_umbrella/config/config.exs",
      deps_path: "../../pfad_umbrella/deps",
      lockfile: "../../pfad_umbrella/mix.lock",
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
      {:benchee, "~> 1.0", only: :dev},
      {:benchee_markdown, "~> 0.2", only: :dev},
      {:ex_doc, "~> 0.21", only: :dev, runtime: false}
    ]
  end
end
