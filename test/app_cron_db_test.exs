defmodule AppCronDbTest do
  use ExUnit.Case
  doctest AppCronDb

  test "greets the world" do
    assert AppCronDb.hello() == :world
  end
end
