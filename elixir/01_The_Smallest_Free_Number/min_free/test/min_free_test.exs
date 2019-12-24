defmodule MinFreeTest do
  use ExUnit.Case
  doctest MinFree

  test "triggering minfree with non-list will cause en error" do
    assert {:error, _} = MinFree.minfree(1)
  end

  test "minfree of [0, 2, 3, 4] should be 1" do
    assert MinFree.minfree([0, 2, 3, 4]) == 1
  end

  test "minfree of [0, 1, 2, 4] should be 3" do
    assert MinFree.minfree([0, 1, 2, 4]) == 3
  end
end
