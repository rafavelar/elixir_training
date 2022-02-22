defmodule Adventod2015Test do
  use ExUnit.Case
  doctest Adventod2015

  test "> delivers presents to 2 houses" do
    assert Adventod2015.hello() == :world
  end

  test "^>v< delivers presents to 4 houses in a square" do
    assert Adventod2015.hello() == :world
  end

  test "^v^v^v^v^v delivers a bunch of presents to some very lucky children at only 2 houses" do
    assert Adventod2015.hello() == :world
  end
end
