defmodule LongestCompondWordTest do
  use ExUnit.Case
  doctest LongestCompondWord

  setup do
    input = ~w(cat cats catsdogcats catxdogcatsrat dog dogcatsdog hippopotamuses rat ratcat ratcatdog ratcatdogcat)
    answer = "ratcatdogcat"
    {:ok, input: input, answer: answer}
  end

  test "greets the world", state do
    assert LongestCompondWord.process(state[:input]) == state[:answer]
  end
end
