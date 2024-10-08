defmodule Witchcraft.Mixfile do
  use Mix.Project

  def project do
    [
      app: :witchcraft_goo,
      aliases: aliases(),
      deps: deps(),
      preferred_cli_env: [quality: :test],

      # Versions
      version: "1.21.0",
      elixir: "~> 1.9",

      # Docs
      name: "Witchcraft",
      docs: docs(),

      # Hex
      description: "Monads and other dark magic (monoids, functors, traversables, &c)",
      package: package()
    ]
  end

  defp aliases do
    [
      quality: [
        "test",
        "credo --strict"
      ]
    ]
  end

  defp deps do
    [
      {:benchfella, "~> 0.3.5", only: [:dev, :test]},
      {:credo, "~> 1.7.0-rc.2", only: [:dev, :test], runtime: false},
      {:inch_ex, github: "rrrene/inch_ex", only: [:dev, :docs, :test], runtime: false},
      {:dialyxir, "~> 1.2", only: :dev, runtime: false},
      {:earmark, "~> 1.5.0-pre1", only: :dev, runtime: false},
      {:ex_doc, "~> 0.29", only: :dev, runtime: false},
      {:exceptional, "~> 2.1"},
      {:operator, "~> 0.2"},
      # Witchcraft stuff
      {:quark_goo, github: "doma-engineering/quark-goo", branch: "main"},
      {:type_class_goo, github: "doma-engineering/type_class-goo", branch: "main"}
    ]
  end

  defp docs do
    [
      extras: ["README.md"],
      logo: "./brand/Icon/PNG/WC-icon-sml@2x-circle.png",
      main: "readme",
      source_url: "https://github.com/witchcrafters/witchcraft"
    ]
  end

  defp package do
    [
      licenses: ["Apache-2.0"],
      links: %{"GitHub" => "https://github.com/witchcrafters/witchcraft"},
      maintainers: ["Brooklyn Zelenka", "Steven Vandevelde"]
    ]
  end
end
