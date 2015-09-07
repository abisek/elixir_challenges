defmodule ElixirChallenges.Euler.Problem000 do
# defmodule Problem000 do
  @moduledoc """
    Solutions to problems 001 to 009
  """
  alias ElixirChallenges.Util

  @doc """
    Find the sum of all the multiples of 3 or 5 below 1000 
  """
  def problem001 do
    (1..999)
    |> Enum.filter(&(rem(&1, 3) == 0 or rem(&1, 5) == 0))
    |> Enum.reduce(0, &(&2 + &1))
  end

  @doc """
    Even fibonacci numbers
  """
  def problem002 do
    fib_seq = Util.Sequence.fib |> Stream.drop 1 # Drop the first item

    fib_seq 
    |> Stream.take_while(&(&1 < 4_000_000))
    |> Stream.filter(&(rem(&1, 2) == 0))
    |> Enum.reduce 0, &(&1 + &2)
  end
end