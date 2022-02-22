defmodule Adventod2015 do
  @moduledoc """
  Documentation for `Adventod2015`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Adventod2015.hello()
      :world

  """
  def deliver(path) do
    path
    |> String.to_charlist()
    |> handle_chars([{0, 0}])
    |> Enum.group_by(& &1)
    |> Enum.count()
  end

  defp handle_chars([], coords), do: coords

  defp handle_chars([h | t], coords),
    do: handle_chars(t, coords ++ handle_coords(h, Enum.take(coords, -1)))

  defp handle_coords(char, [{x, y} | t]) do
    cond do
      char == ?< -> [{x, y - 1}]
      char == ?> -> [{x, y + 1}]
      char == ?^ -> [{x + 1, y}]
      char == ?v -> [{x - 1, y}]
    end
  end
end
