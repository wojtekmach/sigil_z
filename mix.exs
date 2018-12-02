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
      docs: docs(),
      deps: deps()
    ]
  end

  defp package() do
    [
      licenses: ["Apache 2.0"],
      links: %{"GitHub" => "https://github.com/wojtekmach/sigil_z"}
    ]
  end

  defp docs() do
    [
      main: "SigilZ"
    ]
  end

  defp deps() do
    [
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end
end
