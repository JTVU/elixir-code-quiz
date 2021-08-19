defmodule ClosestSquareRoot do
  @moduledoc """
  Documentation for `ClosestSquareRoot`.
  """

  @doc """
    find square-root or the nearest square-root
  """
  def process(number) do
    number
    |> squareroot_of()
  end

  def squareroot_of(0) do
    0
  end

  def squareroot_of(1) do
    1
  end


  def squareroot_of(number) do
    process_squareroot(number, 1)
  end

  def process_squareroot(number, try_number) do
    if (try_number * try_number) <= number do
      process_squareroot(number, try_number + 1)
    else
      try_number - 1
    end
  end

end
