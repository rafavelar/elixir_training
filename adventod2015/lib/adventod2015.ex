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
  end
end
