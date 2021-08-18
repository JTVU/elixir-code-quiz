defmodule LongestCompondWordTest do
  use ExUnit.Case
  doctest LongestCompondWord

  setup do
    input = ~w(cat cats ratcatdogcatmeow catsdogcats catxdogcatsrat meow dog dogcatsdog ratcatdogcat hippopotamuses rat ratcat ratcatdog )
    answer = "ratcatdogcatmeow"
    {:ok, input: input, answer: answer}
  end

  test "greets the world", state do
    assert LongestCompondWord.process(state[:input]) == state[:answer]
  end
end
