defmodule SigilZ do
  @moduledoc """
  Handles the ~Z sigil for UTC datetimes.
  """

  @doc """
  Handles the ~Z sigil for UTC datetimes.

  ## Examples

      iex> import SigilZ
      iex> ~Z[2015-01-13 13:00:07]
      ~Z[2015-01-13 13:00:07]

  """
  defmacro sigil_Z({:<<>>, _, [string]}, _) do
    Macro.escape(parse!(string))
  end

  defp parse!(string) do
    string
    |> NaiveDateTime.from_iso8601!()
    |> DateTime.from_naive!("Etc/UTC")
  end
end

old = Code.compiler_options().ignore_module_conflict
Code.compiler_options(ignore_module_conflict: true)

defimpl Inspect, for: DateTime do
  def inspect(%{calendar: Calendar.ISO, time_zone: "Etc/UTC"} = datetime, _) do
    string = DateTime.to_string(datetime) |> String.trim_trailing("Z")
    "~Z[" <> string <> "]"
  end

  def inspect(
        %{
          calendar: Calendar.ISO,
          year: year,
          month: month,
          day: day,
          hour: hour,
          minute: minute,
          second: second,
          microsecond: microsecond,
          time_zone: time_zone,
          zone_abbr: zone_abbr,
          utc_offset: utc_offset,
          std_offset: std_offset
        },
        _
      ) do
    "#DateTime<" <>
      Calendar.ISO.datetime_to_string(
        year,
        month,
        day,
        hour,
        minute,
        second,
        microsecond,
        time_zone,
        zone_abbr,
        utc_offset,
        std_offset
      ) <> ">"
  end

  def inspect(datetime, opts) do
    Inspect.Any.inspect(datetime, opts)
  end
end

Code.compiler_options(ignore_module_conflict: old)
