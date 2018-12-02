defmodule SigilZ.MixProject do
  use Mix.Project

  @version "0.1.0"
  @description "Handles the ~Z sigil for UTC datetimes."

  def project() do
    [
      app: :sigil_z,
      version: @version,
      elixir: "~> 1.4",
      start_permanent: Mix.env() == :prod,
      description: @description,
      package: package(),
      deps: deps()
    ]
  end

  defp package() do
    [
      licenses: ["Apache 2.0"],
      links: %{"GitHub" => "wojtekmach/sigil_z"}
    ]
  end

  defp deps() do
    []
  end
end
