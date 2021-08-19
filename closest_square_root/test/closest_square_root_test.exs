defmodule ClosestSquareRootTest do
  use ExUnit.Case
  doctest ClosestSquareRoot

  setup do
    {:ok, root_of_9: 3,  root_of_20: 4}
  end

  test "squareroot of number", state do
    assert ClosestSquareRoot.process(9) == state[:root_of_9]
  end

  test "squareroot of IMPERFECT is closest", state do
    assert ClosestSquareRoot.process(20) == state[:root_of_20]
  end

  test "squareroot of 1 is 1" do
    assert ClosestSquareRoot.process(1) == 1
  end


end
