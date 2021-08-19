defmodule LongestCompondWord do
  @moduledoc """
  Documentation for `LongestCompondWord`.
  """

  @doc """
  get a list on words.
  return the longest compound
  """
  def process(input_words) do

    # List and iteration.
    mapLi = Enum.map(input_words, fn(word) ->
      {word, count} = print(word, input_words)
    end)
    {largest_word, _count } = Enum.max_by(mapLi, fn {word, count} -> count end)

    largest_word
  end

  def print(word, input_words) do
    count = parse_letters(word, input_words, "", 0)
    {word, count}
  end

  defp parse_letters("", _input_words, remaining, count) do
    # print_letter(count)
    count
  end

  # remaining_word, parsed_letters_of_word
  defp parse_letters(word, input_words, parsed, count) do
    <<letter, remaining::binary>> = word
    parsed = parsed <> <<letter::utf8>>

    # IO.puts("parsed - #{parsed} ;; remaining - #{remaining}")

    if Enum.member?(input_words, parsed) do
      # IO.puts("word #{parsed} present in LIST")
      parse_letters(remaining, input_words, "", count + 1)
    else
      parse_letters(remaining, input_words, parsed, count)
    end
  end

  def print_letter("") do
    IO.puts("--------------------------------------------------------")
  end

  def print_letter(letter) do
    IO.puts("- #{letter} -")
  end
end
