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
    parse_letters(word)
  end

  defp parse_letters("") do
    print_letter("")
  end

  defp parse_letters(word) do
    <<letter, remaining::binary>> = word
    print_letter(letter)
    parse_letters(remaining)
  end

  def print_letter("") do
    IO.puts("--------------------------------------------------------")
  end

  def print_letter(letter) do
    IO.puts("- #{letter} -")
  end

end
