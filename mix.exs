defmodule SigilZ.MixProject do
  use Mix.Project

  def project do
    [
      app: :z,
      version: "0.1.0",
      elixir: "~> 1.4",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  defp deps do
    []
  end
end
