defmodule RemoveDuplicateCharsInStringTest do
  use ExUnit.Case
  doctest RemoveDuplicateCharsInString

  setup do
    {
      :ok,
      ex1: %{key: "asdf", value: "asdf"},
      ex2: %{key: "refrigerator", value: "refigato"}
    }
  end

  test "string with no duplicates", state do
    assert RemoveDuplicateCharsInString.process(state[:ex1].key) == state[:ex1].value
  end

  test "string with duplicates", state do
    assert RemoveDuplicateCharsInString.process(state[:ex2].key) == state[:ex2].value
  end

end
