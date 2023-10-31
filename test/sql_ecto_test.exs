defmodule SqlEctoTest do
  use ExUnit.Case
  doctest SqlEcto

  test "greets the world" do
    assert SqlEcto.hello() == :world
  end
end
