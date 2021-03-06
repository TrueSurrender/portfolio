defmodule Portfolio.MixFile do
  use Mix.Project

  def project do
    [
      app: :portfolio,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      applications: [:serum]
    ]
  end

  defp deps do
    [
      {:microscope, "1.3.0", override: true},
      {:serum, "~> 1.5"}
    ]
  end
end
