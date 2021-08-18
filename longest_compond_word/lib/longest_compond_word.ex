defmodule LongestCompondWord do
  @moduledoc """
  Documentation for `LongestCompondWord`.
  """

  @doc """
  get a list on words.
  return the longest compound
  """
  def process(input_words) do
    largest_word = hd(input_words)
    for word <- input_words do
      print(word)
    end

    largest_word
  end

  def print(word) do
    parse_letters(word, "")
  end

  defp parse_letters("",  _remaining) do
    print_letter("")
  end

  # remaining_word, parsed_letters_of_word
  defp parse_letters(word, parsed) do
    <<letter, remaining::binary>> = word
    parsed = parsed <> <<letter::utf8>>
    IO.puts "parsed - #{parsed} ;; remaining - #{ remaining }"
    print_letter(letter)
    parse_letters(remaining, parsed)
  end

  def print_letter("") do
    IO.puts("--------------------------------------------------------")
  end

  def print_letter(letter) do
    IO.puts("- #{letter} -")
  end

end
